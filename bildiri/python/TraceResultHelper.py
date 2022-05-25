

class TraceResultHelper:
    __files = []
    all_data = None

    def __init__(self, files):
        self.__files = files

    def __get_values_in_arranged_file_data(self, data):
        liste = {}
        liste["overhead"] = float(data[3])
        liste["throughput"] = float(data[4])
        liste["packet_delivery_ratio"] = float(data[5])
        liste["normalized_routing_load"] = float(data[6])
        liste["end_to_end_delay"] = float(data[7])

        return liste

    def __arrange_file_data(self, file_data):
        new_data = file_data.split("\n")[1]
        if "Infinity" in new_data:
            new_data = new_data.replace("Infinity", " 3.0")
        if "NaN" in new_data:
            new_data = new_data.replace("NaN", " 0.2")
        if "-0.0" in new_data:
            new_data = new_data.replace("-0.0", " 0.0")

        return list(filter(None, new_data.split(" ")))

    def __read_file(self, file):
        with open(file, "r") as f:
            data = f.read()
            data = self.__arrange_file_data(data)

        return data

    def get_all_data(self):
        all_data = {
            "title": "",
            "file_names": [],
            "overhead": [],
            "throughput": [],
            "packet_delivery_ratio": [],
            "normalized_routing_load": [],
            "end_to_end_delay": [],
        }

        for file in self.__files:
            file_data = self.__read_file(file)
            data = self.__get_values_in_arranged_file_data(file_data)
            all_data["file_names"].append(file.rsplit(".", 1)[0].split("Result_")[-1])
            all_data["overhead"].append(data["overhead"])
            all_data["throughput"].append(data["throughput"])
            all_data["packet_delivery_ratio"].append(data["packet_delivery_ratio"])
            all_data["normalized_routing_load"].append(data["normalized_routing_load"])
            all_data["end_to_end_delay"].append(data["end_to_end_delay"])

        return all_data

