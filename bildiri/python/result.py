import matplotlib.pyplot as plt

from TraceResultHelper import TraceResultHelper

scenario_files = [
    "../trace/Result_Senaryo-1.txt",
    "../trace/Result_Senaryo-2.txt",
    "../trace/Result_Senaryo-3.txt",
    "../trace/Result_Senaryo-4.txt",
    "../trace/Result_Senaryo-5.txt",
    "../trace/Result_Senaryo-6.txt",
    "../trace/Result_Senaryo-7.txt",
    "../trace/Result_Senaryo-8.txt",
    "../trace/Result_Senaryo-9.txt"
]

c = ['green', 'red', 'blue', 'yellow', "cyan", "black", "purple", "orange", "brown"]
data_keys_dict = {
    "Paket Teslim Oranı": "packet_delivery_ratio",
    "Verim": "throughput",
    "Uçtan Uca Gecikme": "end_to_end_delay",
    "Normalleştirilmiş Yönlendirme Yükü": "normalized_routing_load",
    "Ek Yük": "overhead"
}
y_labels = [
    "%",
    "kbps",
    "second",
    "",
    ""
]


def plot_all(instance):
    global data_keys_dict

    for key, value in enumerate(data_keys_dict):
        # x = instance.all_data["file_names"]
        x = [i.split("-")[-1] for i in instance.all_data["file_names"]]
        h = instance.all_data[data_keys_dict[value]]
        plt.title(value)
        plt.bar(x, height=h, color=c)
        plt.xlabel("Senaryo")
        plt.ylabel(y_labels[key])
        plt.savefig(f'../grafikler/{value}.png')
        plt.show()


instance = TraceResultHelper(scenario_files)
instance.all_data = instance.get_all_data()
plot_all(instance)
