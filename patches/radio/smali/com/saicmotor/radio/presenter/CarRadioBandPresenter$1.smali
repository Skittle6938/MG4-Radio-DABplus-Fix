.class Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;
.super Ljava/lang/Object;
.source "CarRadioBandPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;


# direct methods
.method constructor <init>(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 815
    invoke-static {}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$000()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "onServiceConnected()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 816
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    check-cast p2, Lcom/android/car/radio/service/IRadioManager;

    invoke-static {p1, p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$102(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;Lcom/android/car/radio/service/IRadioManager;)Lcom/android/car/radio/service/IRadioManager;

    .line 817
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$200(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    .line 819
    :try_start_0
    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$100(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/android/car/radio/service/IRadioManager;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$100(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/android/car/radio/service/IRadioManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/car/radio/service/IRadioManager;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 826
    invoke-interface {p1, p2}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyEnabled(Z)V

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$100(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/android/car/radio/service/IRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {v1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$300(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/android/car/radio/service/IRadioCallback$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/car/radio/service/IRadioManager;->addRadioTunerCallback(Lcom/android/car/radio/service/IRadioCallback;)V

    .line 831
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$400(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    .line 832
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {v1, v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$500(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;I)V

    .line 833
    sget-boolean v0, Lcom/saicmotor/radio/app/RadioApp;->isAllowResumePlay:Z

    if-eqz v0, :cond_2

    .line 835
    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$600(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)V

    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->maybeAutoResume()V

    goto :goto_0

    .line 837
    :cond_2
    sput-boolean p2, Lcom/saicmotor/radio/app/RadioApp;->isAllowResumePlay:Z

    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->maybeAutoResume()V

    .line 840
    :goto_0
    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->updateRadioDisplay()V

    .line 842
    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-static {p2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$400(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioListType()I

    if-eqz p1, :cond_5

    .line 844
    invoke-interface {p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyShowFavoriteList()V

    .line 845
    invoke-interface {p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyShowPreScannedList()V

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 821
    invoke-interface {p1, p2}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 853
    invoke-static {}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$000()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected(); remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 859
    invoke-static {}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$000()Lcom/saicmotor/radio/utils/log/Logger;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 860
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;->this$0:Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->access$102(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;Lcom/android/car/radio/service/IRadioManager;)Lcom/android/car/radio/service/IRadioManager;

    return-void
.end method
