.class Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;
.super Ljava/lang/Object;
.source "CarRadioDabPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;


# direct methods
.method constructor <init>(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 536
    invoke-static {}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$000()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "onServiceConnected()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    check-cast p2, Lcom/android/car/radio/service/IRadioManager;

    invoke-static {p1, p2}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$102(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;Lcom/android/car/radio/service/IRadioManager;)Lcom/android/car/radio/service/IRadioManager;

    .line 539
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$200(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    .line 542
    :try_start_0
    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p2}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$100(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IRadioManager;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p2}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$100(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IRadioManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/car/radio/service/IRadioManager;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 550
    invoke-interface {p1, p2}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyEnabled(Z)V

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$100(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IRadioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$300(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IDabCallback$Stub;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/car/radio/service/IRadioManager;->addDabTunerCallback(Lcom/android/car/radio/service/IDabCallback;)V

    .line 555
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$400(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result p1

    .line 556
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$500(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;I)V

    .line 557
    sget-boolean p1, Lcom/saicmotor/radio/app/RadioApp;->isAllowResumePlay:Z

    if-eqz p1, :cond_2

    .line 559
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$600(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V

    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->maybeAutoResume()V

    goto :goto_0

    .line 561
    :cond_2
    sput-boolean p2, Lcom/saicmotor/radio/app/RadioApp;->isAllowResumePlay:Z

    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p2}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->maybeAutoResume()V

    .line 563
    :goto_0
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$300(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IDabCallback$Stub;

    move-result-object p1

    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p2}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$100(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IRadioManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/car/radio/service/IRadioManager;->isMuted()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/car/radio/service/IDabCallback$Stub;->notifyDabMuteChanged(Z)V

    .line 565
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$700(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V

    .line 567
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$800(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 544
    invoke-interface {p1, p2}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 579
    invoke-static {}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$000()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected(); remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 585
    invoke-static {}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$000()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->access$102(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;Lcom/android/car/radio/service/IRadioManager;)Lcom/android/car/radio/service/IRadioManager;

    return-void
.end method
