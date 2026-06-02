.class Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;
.super Landroid/hardware/radio/DabTuner$Callback;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/saicmotor/radio/service/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DabTunerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saicmotor/radio/service/RadioService;


# direct methods
.method private constructor <init>(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 2470
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-direct {p0}, Landroid/hardware/radio/DabTuner$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/saicmotor/radio/service/RadioService;Lcom/saicmotor/radio/service/RadioService$1;)V
    .locals 0

    .line 2470
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    return-void
.end method


# virtual methods
.method public onDabAnnouncementsStatusChanged(Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;)V
    .locals 14

    .line 2611
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabAnnouncementsStatusChanged() AnnouncementStatusInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2613
    new-instance v0, Lcom/android/car/radio/service/DabAnnouncement;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getNewsFlash()Z

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getAreaWeatherFlash()Z

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getSportReport()Z

    move-result v5

    .line 2614
    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getFinancialReport()Z

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getTransportFlash()Z

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getEventAnnouncement()Z

    move-result v8

    .line 2615
    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getSpecialEvent()Z

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getProgrammeInfomation()Z

    move-result v10

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getWarning()Z

    move-result v11

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getRoadTrafficFlash()Z

    move-result v12

    .line 2616
    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getAlarm()Z

    move-result v13

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/android/car/radio/service/DabAnnouncement;-><init>(ZZZZZZZZZZZ)V

    .line 2619
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismNewsFlash()Z

    move-result v1

    .line 2622
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismAreaWeatherFlash()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v1, v3

    .line 2625
    :cond_0
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismSportReport()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 2628
    :cond_1
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismFinancialReport()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 2631
    :cond_2
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismTransportFlash()Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    .line 2634
    :cond_3
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismEventAnnouncement()Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    .line 2637
    :cond_4
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismSpecialEvent()Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    .line 2640
    :cond_5
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismProgrammeInfomation()Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v3

    .line 2643
    :cond_6
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismWarning()Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v3

    .line 2646
    :cond_7
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismRoadTrafficFlash()Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    .line 2649
    :cond_8
    invoke-virtual {v0}, Lcom/android/car/radio/service/DabAnnouncement;->ismAlarm()Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v3

    :cond_9
    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 2654
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1700(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2655
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1700(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2656
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1700(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/manager/RadioStationManager;->mute(Z)Z

    move-result v1

    goto :goto_1

    .line 2660
    :cond_a
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStoppedByUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v5}, Lcom/saicmotor/radio/service/RadioService;->access$2900(Lcom/saicmotor/radio/service/RadioService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2661
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$2900(Lcom/saicmotor/radio/service/RadioService;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$3900(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/service/RadioManagerBinder;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2663
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$3900(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/service/RadioManagerBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/saicmotor/radio/service/RadioManagerBinder;->hasFocus()Z

    move-result v1

    .line 2664
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasFocus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    .line 2666
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1700(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/saicmotor/radio/manager/RadioStationManager;->mute(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2667
    :try_start_1
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v4, v3}, Lcom/saicmotor/radio/service/RadioService;->access$2902(Lcom/saicmotor/radio/service/RadioService;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move v1, v2

    .line 2670
    :goto_0
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_b
    move v1, v2

    .line 2675
    :goto_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v3}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    monitor-enter v3

    .line 2676
    :try_start_2
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v4}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_c

    .line 2679
    :try_start_3
    iget-object v6, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v6}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/android/car/radio/service/IRadioCallback;

    invoke-interface {v6, v1}, Lcom/android/car/radio/service/IRadioCallback;->onRadioMuteChanged(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v6

    .line 2681
    :try_start_4
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2684
    :cond_c
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2685
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2693
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    .line 2694
    :try_start_5
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v3}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    if-ge v2, v3, :cond_d

    .line 2697
    :try_start_6
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v4}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioCallback;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getServiceShortFlag()[C

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$AnnouncementStatusInfo;->getServiceLabel()[C

    move-result-object v6

    invoke-interface {v4, v0, v5, v6}, Lcom/android/car/radio/service/IRadioCallback;->onDabAnnouncementsStatusChanged(Lcom/android/car/radio/service/DabAnnouncement;[C[C)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v4

    .line 2699
    :try_start_7
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2702
    :cond_d
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {p1}, Lcom/saicmotor/radio/service/RadioService;->access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2703
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2685
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method public onDabCTChanged(Landroid/hardware/radio/RadioDabInfo$CTInfo;)V
    .locals 3

    .line 2601
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabCTChanged() ctInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onDabDLSChanged([C)V
    .locals 6

    .line 2529
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabDLSChanged() dlsText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2530
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 2531
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 2534
    :try_start_1
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v4}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IDabCallback;

    invoke-interface {v4, p1}, Lcom/android/car/radio/service/IDabCallback;->notifyDabDLSChanged([C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2536
    :try_start_2
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2539
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2540
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2541
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$300(Lcom/saicmotor/radio/service/RadioService;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2542
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$1900(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 2543
    :try_start_3
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1900(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-ge v2, v1, :cond_1

    .line 2546
    :try_start_4
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v3}, Lcom/saicmotor/radio/service/RadioService;->access$1900(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioMBSCallback;

    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v4}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabArtist(Lcom/android/car/radio/service/RadioDabStation;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    .line 2548
    :try_start_5
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2551
    :cond_1
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {p1}, Lcom/saicmotor/radio/service/RadioService;->access$1900(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2552
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    .line 2554
    :cond_2
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDabDLSChanged mCurrentRadioBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$300(Lcom/saicmotor/radio/service/RadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 2540
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public onDabDLSPlusChanged(Landroid/hardware/radio/RadioDabInfo$DLPlusInfo;)V
    .locals 3

    .line 2561
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabDLSPlusChanged() dlPlusInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onDabEPGChanged(Landroid/hardware/radio/RadioDabInfo$EPGInfo;)V
    .locals 3

    .line 2592
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabEPGChanged()  epgInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2596
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0, p1}, Lcom/saicmotor/radio/service/RadioService;->access$5500(Lcom/saicmotor/radio/service/RadioService;Landroid/hardware/radio/RadioDabInfo$EPGInfo;)V

    return-void
.end method

.method public onDabMainInfoChanged(Landroid/hardware/radio/RadioDabInfo$MainInfo;)V
    .locals 12

    .line 2478
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabMainInfoChanged()  mainInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2480
    new-instance v0, Lcom/android/car/radio/service/RadioDabStation;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$MainInfo;->getPty()I

    move-result v3

    const-string v4, ""

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$MainInfo;->getServiceId()J

    move-result-wide v5

    const-string v7, ""

    .line 2481
    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$MainInfo;->getEnsembleId()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 2482
    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$MainInfo;->getFrequency()I

    move-result v11

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/car/radio/service/RadioDabStation;-><init>(ILjava/lang/String;JLjava/lang/String;IIII)V

    .line 2483
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {p1}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/model/RadioStorage;->getDabStationForServiceId(Lcom/android/car/radio/service/RadioDabStation;)Lcom/android/car/radio/service/RadioDabStation;

    move-result-object p1

    .line 2484
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 2485
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2488
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v3}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IDabCallback;

    invoke-interface {v3, p1}, Lcom/android/car/radio/service/IDabCallback;->notifyDabMainInfoChanged(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2490
    :try_start_2
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2493
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2494
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$3100(Lcom/saicmotor/radio/service/RadioService;)V

    .line 2495
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1, p1}, Lcom/saicmotor/radio/service/RadioService;->access$5300(Lcom/saicmotor/radio/service/RadioService;Lcom/android/car/radio/service/RadioDabStation;)V

    .line 2496
    monitor-exit v0

    # CACHE LOAD: restore cached bitmap for this station immediately on tune
    # p1 = resolved station (may be null), v5/v6 = serviceId (long wide pair)
    # v0-v4, v7-v11 free at this point
    if-eqz p1, :cache_skip

    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "dab_"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v8, ".jpg"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7

    iget-object v8, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    :cache_load_try_start
    invoke-virtual {v8, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    move-result-object v9
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    move-result-object v10
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :cache_load_try_end
    .catch Ljava/lang/Exception; {:cache_load_try_start .. :cache_load_try_end} :cache_io_error

    if-eqz v10, :cache_skip

    iget-object v7, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;
    invoke-static {v7}, Lcom/saicmotor/radio/service/RadioService;->access$1900(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;
    move-result-object v7

    monitor-enter v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    move-result v11
    const/4 v2, 0x0

    :cache_mbs_loop
    if-ge v2, v11, :cache_mbs_done

    :cache_mbs_item_try_start
    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
    move-result-object v8
    check-cast v8, Lcom/android/car/radio/service/IRadioMBSCallback;
    invoke-interface {v8, p1, v10}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V
    :cache_mbs_item_try_end
    .catch Ljava/lang/Exception; {:cache_mbs_item_try_start .. :cache_mbs_item_try_end} :cache_mbs_item_catch

    :cache_mbs_next
    add-int/lit8 v2, v2, 0x1
    goto :cache_mbs_loop

    :cache_mbs_item_catch
    move-exception v8
    goto :cache_mbs_next

    :cache_mbs_done
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    monitor-exit v7

    :cache_skip
    goto :goto_2

    :cache_io_error
    move-exception v7
    goto :cache_skip

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public onDabServiceFollowingNotify(I)V
    .locals 3

    .line 2606
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabServiceFollowingNotify() sf_notify = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onDabServiceInformationListChanged(Landroid/hardware/radio/RadioDabInfo$ServiceInformationList;)V
    .locals 3

    if-nez p1, :cond_0

    .line 2726
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "DabTunerCallback onDabServiceInformationListChanged = null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 2729
    :cond_0
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabServiceInformationListChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$ServiceInformationList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2730
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2731
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->setServiceInformationList(Landroid/hardware/radio/RadioDabInfo$ServiceInformationList;)V

    :cond_1
    return-void
.end method

.method public onDabServiceLogoChanged(Landroid/hardware/radio/RadioDabInfo$ServiceLogoInfo;)V
    .locals 5

    .line 2708
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabServiceLogoChanged() logo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$ServiceLogoInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$ServiceLogoInfo;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$ServiceLogoInfo;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2710
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2711
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2712
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDabServiceLogoChanged mll dw = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  dh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    if-le v0, v2, :cond_1

    sub-int/2addr v1, v0

    .line 2713
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2714
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2715
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->setServiceLogoInfo(Landroid/hardware/radio/RadioDabInfo$ServiceLogoInfo;)V

    .line 2717
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {p1}, Lcom/saicmotor/radio/service/RadioService;->access$1200(Lcom/saicmotor/radio/service/RadioService;)V

    goto :goto_0

    .line 2719
    :cond_1
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "logo change return"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDabSlideShowChanged(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 2566
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    const-string v1, "DabTunerCallback onDabSlideShowChanged()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2568
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "bitmap = null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 2571
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2572
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->setDabSlideShow(Landroid/graphics/Bitmap;)V

    # PATCH: forward DAB slideshow bitmap to RadioMBService -> MediaSession ALBUM_ART
    # v0 = mRadioStorage (valid from setDabSlideShow call above), p1 = Bitmap

    # CENTER-CROP: remove horizontal black bars so launcher always gets a square
    # Radio app already received the original p1 above; we only crop for MediaSession/cache
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v2
    if-le v1, v2, :no_crop
    sub-int/2addr v1, v2
    div-int/lit8 v1, v1, 0x2
    const/4 v3, 0x0
    invoke-static {p1, v1, v3, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    move-result-object p1
    :no_crop

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;
    move-result-object v0

    # null-check: toSetSessionMetadataDabBitmap(null, bmp) wipes metadata - skip entirely
    if-eqz v0, :patch_skip

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;
    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$1900(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;
    move-result-object v1

    monitor-enter v1

    :patch_try_start_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    move-result v2
    :patch_try_end_0
    .catchall {:patch_try_start_0 .. :patch_try_end_0} :patch_catchall_0

    const/4 v3, 0x0

    :patch_mbs_loop
    if-ge v3, v2, :patch_mbs_done

    :patch_try_start_1
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
    move-result-object v4
    check-cast v4, Lcom/android/car/radio/service/IRadioMBSCallback;
    invoke-interface {v4, v0, p1}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V
    :patch_try_end_1
    .catch Ljava/lang/Exception; {:patch_try_start_1 .. :patch_try_end_1} :patch_catch_0
    .catchall {:patch_try_start_1 .. :patch_try_end_1} :patch_catchall_0

    goto :patch_loop_next

    :patch_catch_0
    move-exception v4

    :patch_loop_next
    add-int/lit8 v3, v3, 0x1
    goto :patch_mbs_loop

    :patch_mbs_done
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    monitor-exit v1

    # CACHE SAVE: persist slideshow bitmap to disk keyed by station serviceId
    # v0 = current DAB station (non-null), p1 = Bitmap (non-null), v1-v6 free
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-virtual {v0}, Lcom/android/car/radio/service/RadioDabStation;->getServiceId()J
    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "dab_"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v5, ".jpg"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4

    :patch_save_try_start
    const/4 v5, 0x0
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    move-result-object v5
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v4, 0x55
    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :patch_save_try_end
    .catch Ljava/lang/Exception; {:patch_save_try_start .. :patch_save_try_end} :patch_save_error

    goto :patch_skip

    :patch_save_error
    move-exception v4

    :patch_skip
    goto :goto_0

    :patch_catchall_0
    move-exception v4
    monitor-exit v1
    throw v4

    .line 2574
    :cond_1
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    const-string v1, "onDabSlideShowChanged mRadioStorage = null"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2576
    :goto_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 2577
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v1}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 2580
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v3}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IDabCallback;

    invoke-interface {v3, p1}, Lcom/android/car/radio/service/IDabCallback;->notifyDabSlideShowChanged(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 2582
    :try_start_2
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2585
    :cond_2
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {p1}, Lcom/saicmotor/radio/service/RadioService;->access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2586
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onDabStationListInfoChanged(Landroid/hardware/radio/RadioDabInfo$StationListInfo;)V
    .locals 3

    .line 2503
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DabTunerCallback onDabStationListInfoChanged() stationListInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2504
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$5400(Lcom/saicmotor/radio/service/RadioService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2506
    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$StationListInfo;->getListNum()I

    move-result v0

    if-lez v0, :cond_0

    .line 2507
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$5400(Lcom/saicmotor/radio/service/RadioService;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/saicmotor/radio/utils/RadioDabStationListUtil;->getRadioDabStationList(Landroid/hardware/radio/RadioDabInfo$StationListInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2508
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {p1}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2509
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {p1}, Lcom/saicmotor/radio/service/RadioService;->access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p1

    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;->this$0:Lcom/saicmotor/radio/service/RadioService;

    invoke-static {v0}, Lcom/saicmotor/radio/service/RadioService;->access$5400(Lcom/saicmotor/radio/service/RadioService;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/model/RadioStorage;->storeDabStationList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 1

    .line 2473
    invoke-static {}, Lcom/saicmotor/radio/service/RadioService;->access$200()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "DabTunerCallback onError()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method
