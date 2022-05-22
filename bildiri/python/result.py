import matplotlib.pyplot as plt

from TraceResultHelper import TraceResultHelper

scenario_1_files = [
    "../trace/Result_Senaryo-1.txt",
    "../trace/Result_Senaryo-2.txt",
    "../trace/Result_Senaryo-3.txt",
    "../trace/Result_Senaryo-4.txt"
]

scenario_2_files = [
    "../trace/Result_Senaryo-5.txt",
    "../trace/Result_Senaryo-6.txt",
    "../trace/Result_Senaryo-7.txt",
]

scenario_3_files = [
    "../trace/Result_Senaryo-5.txt",
    "../trace/Result_Senaryo-8.txt",
    "../trace/Result_Senaryo-9.txt"
]

c = ['green', 'red', 'blue', 'yellow']
data_keys_dict = {
    "Paket Teslim Oranı": "packet_delivery_ratio",
    "Verim": "throughput",
    "Uçtan Uca Gecikme": "end_to_end_delay",
    "Normalleştirilmiş Yönlendirme Yükü": "normalized_routing_load",
    "Ek Yük": "overhead"
}


def plot_all(instance):
    global data_keys_dict

    for key in data_keys_dict:
        x = instance.all_data["file_names"]
        h = instance.all_data[data_keys_dict[key]]
        plt.title(key)
        plt.bar(x, height=h, color=c)
        plt.show()


# Normalleştirilmiş yönlendirme yükü (NRL), tüm düğümler tarafından gönderilen tüm yönlendirme kontrol paketlerinin hedef düğümlerde alınan veri paketlerinin sayısına oranıdır.


instance = TraceResultHelper(scenario_1_files)
instance.all_data = instance.get_all_data()
plot_all(instance)

instance = TraceResultHelper(scenario_2_files)
instance.all_data = instance.get_all_data()
plot_all(instance)

instance = TraceResultHelper(scenario_3_files)
instance.all_data = instance.get_all_data()
plot_all(instance)
