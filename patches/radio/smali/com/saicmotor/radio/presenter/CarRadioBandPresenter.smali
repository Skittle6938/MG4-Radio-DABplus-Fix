.class public Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;
.super Lcom/saicmotor/radio/contract/CarRadioContract$AbstractCarRadioBandPresenter;
.source "CarRadioBandPresenter.java"

# interfaces
.implements Lcom/saicmotor/radio/model/RadioStorage$FavoriteChangeListener;
.implements Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;


# static fields
.field private static final DOUBLE_CLICK_TIMEOUT:J = 0x1f4L

.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;

.field private static mLastClickTime:J


# instance fields
.field private mCallBack:Lcom/saicmotor/radio/listener/MessageFactory$MessageCallBack;

.field private final mCallback:Lcom/android/car/radio/service/IRadioCallback$Stub;

.field private mContext:Landroid/content/Context;

.field public mCurrentChannelNumber:I

.field private mCurrentRadioBand:I

.field private mCurrentRds:Lcom/android/car/radio/service/RadioRds;

.field private mRadioManager:Lcom/android/car/radio/service/IRadioManager;

.field private final mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mStationChangeListener:Lcom/saicmotor/radio/listener/RadioStationChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/saicmotor/radio/contract/CarRadioContract$AbstractCarRadioBandPresenter;-><init>()V

    const/4 p2, -0x1

    .line 39
    iput p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    .line 40
    iput p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    .line 811
    new-instance p2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;

    invoke-direct {p2, p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$1;-><init>(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)V

    iput-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 867
    new-instance p2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$2;

    invoke-direct {p2, p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter$2;-><init>(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)V

    iput-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallback:Lcom/android/car/radio/service/IRadioCallback$Stub;

    .line 1114
    new-instance p2, Lcom/saicmotor/radio/presenter/-$$Lambda$CarRadioBandPresenter$FJiRRbupepwEqLoBpzQiEsx4tCo;

    invoke-direct {p2, p0}, Lcom/saicmotor/radio/presenter/-$$Lambda$CarRadioBandPresenter$FJiRRbupepwEqLoBpzQiEsx4tCo;-><init>(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)V

    iput-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallBack:Lcom/saicmotor/radio/listener/MessageFactory$MessageCallBack;

    .line 48
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/saicmotor/radio/model/RadioStorage;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Lcom/saicmotor/radio/model/RadioStorage;->addFavoriteChangeListener(Lcom/saicmotor/radio/model/RadioStorage$FavoriteChangeListener;)V

    .line 52
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p1, p0}, Lcom/saicmotor/radio/model/RadioStorage;->addPreScannedChannelChangeListener(Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;)V

    .line 53
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p1}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result p1

    iput p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    .line 54
    iget-object p2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p2, p1}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioChannel(I)I

    move-result p1

    iput p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallBack:Lcom/saicmotor/radio/listener/MessageFactory$MessageCallBack;

    invoke-static {p1}, Lcom/saicmotor/radio/listener/MessageFactory;->registerServiceReadyCallback(Lcom/saicmotor/radio/listener/MessageFactory$MessageCallBack;)V

    return-void
.end method

.method static synthetic access$000()Lcom/saicmotor/radio/utils/log/Logger;
    .locals 1

    .line 34
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/android/car/radio/service/IRadioManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/saicmotor/radio/listener/RadioStationChangeListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mStationChangeListener:Lcom/saicmotor/radio/listener/RadioStationChangeListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;Lcom/android/car/radio/service/IRadioManager;)Lcom/android/car/radio/service/IRadioManager;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->clearMetadataDisplay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/android/car/radio/service/RadioRds;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;Lcom/android/car/radio/service/RadioRds;)Lcom/android/car/radio/service/RadioRds;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/android/car/radio/service/IRadioCallback$Stub;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallback:Lcom/android/car/radio/service/IRadioCallback$Stub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)Lcom/saicmotor/radio/model/RadioStorage;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    return-object p0
.end method

.method static synthetic access$500(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->openRadioBand(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToStoredRadioBandChannel()V

    return-void
.end method

.method static synthetic access$700(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    return p0
.end method

.method static synthetic access$800(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setRadioChannel(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;Lcom/android/car/radio/service/RadioStation;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setRadioName(Lcom/android/car/radio/service/RadioStation;)V

    return-void
.end method

.method private clearMetadataDisplay()V
    .locals 2

    .line 797
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "clearMetadataDisplay()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    return-void
.end method

.method private declared-synchronized isFastClick()Z
    .locals 5

    monitor-enter p0

    .line 802
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mLastClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 804
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mLastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openRadioBand(I)V
    .locals 3

    .line 586
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openRadioBand():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 593
    iput v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    .line 595
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setCurrentRadioBand(I)V

    .line 596
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_1

    .line 597
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioBand(I)V

    .line 601
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->openRadioBand(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 603
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openRadioBand(); remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setCurrentRadioBand(I)V
    .locals 3

    .line 613
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentRadioBand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 614
    iget v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-ne v0, p1, :cond_0

    return-void

    .line 617
    :cond_0
    iput p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    return-void
.end method

.method private setRadioChannel(I)V
    .locals 3

    .line 699
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioChannel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-gtz p1, :cond_1

    .line 704
    iput p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    if-eqz v0, :cond_0

    const-string p1, ""

    const/4 v1, 0x0

    .line 706
    invoke-interface {v0, p1, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->onChannelNumberUpdate(Ljava/lang/String;I)V

    .line 707
    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyUpdateFinetuneSeekbarProgress(I)V

    :cond_0
    return-void

    .line 711
    :cond_1
    iput p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    .line 712
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    return-void

    .line 714
    :cond_2
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setRadioChannelForFm(I)V

    goto :goto_0

    .line 718
    :cond_3
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setRadioChannelForAm(I)V

    :goto_0
    if-eqz v0, :cond_4

    .line 727
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    invoke-virtual {v1, p1, v2}, Lcom/saicmotor/radio/model/RadioStorage;->isFavorite(II)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyChannelIsFavorite(Z)V

    .line 730
    :cond_4
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz p1, :cond_5

    .line 731
    iget v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    invoke-virtual {p1, v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioChannel(II)V

    :cond_5
    return-void
.end method

.method private setRadioChannelForAm(I)V
    .locals 4

    .line 773
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setRadioChannelForAm()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 782
    sget-object v1, Lcom/saicmotor/radio/utils/RadioChannelFormatter;->AM_FORMATTER:Ljava/text/DecimalFormat;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->onChannelNumberUpdate(Ljava/lang/String;I)V

    .line 784
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->isNeedUpdateSeekBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    sget v1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    sub-int/2addr p1, v1

    sget v1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_STEP:I

    div-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyUpdateFinetuneSeekbarProgress(I)V

    :cond_1
    return-void
.end method

.method private setRadioChannelForFm(I)V
    .locals 5

    .line 741
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioChannelForFm(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 752
    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 753
    sget v2, Lcom/saicmotor/radio/constant/RadioConstant;->area:I

    if-eqz v2, :cond_2

    sget v2, Lcom/saicmotor/radio/constant/RadioConstant;->area:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 756
    :cond_1
    sget-object v2, Lcom/saicmotor/radio/utils/RadioChannelFormatter;->FM_FORMATTER:Ljava/text/DecimalFormat;

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->onChannelNumberUpdate(Ljava/lang/String;I)V

    goto :goto_1

    .line 754
    :cond_2
    :goto_0
    sget-object v2, Lcom/saicmotor/radio/utils/RadioChannelFormatter;->FM_FORMATTER_TOW_DECIMAL_PLACES:Ljava/text/DecimalFormat;

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->onChannelNumberUpdate(Ljava/lang/String;I)V

    .line 759
    :goto_1
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->isNeedUpdateSeekBar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 760
    sget v1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    sub-int/2addr p1, v1

    sget v1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_STEP:I

    div-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyUpdateFinetuneSeekbarProgress(I)V

    :cond_3
    return-void
.end method

.method private setRadioName(Lcom/android/car/radio/service/RadioStation;)V
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_0

    return-void

    .line 1111
    :cond_0
    invoke-interface {v0, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyRadioNameChanged(Lcom/android/car/radio/service/RadioStation;)V

    return-void
.end method

.method private tuneToStoredRadioBandChannel()V
    .locals 6

    .line 629
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioChannel(I)I

    move-result v0

    .line 634
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "tuneToStoredRadioBandChannel(); band: %s, channel %s"

    .line 634
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 638
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    goto :goto_0

    .line 644
    :cond_2
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 651
    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-ne v2, v5, :cond_4

    .line 652
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/model/RadioStorage;->getFMRadioStationForChannel(I)Lcom/android/car/radio/service/RadioStation;

    move-result-object v1

    .line 653
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2}, Lcom/saicmotor/radio/model/RadioStorage;->getRadioRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object v2

    iput-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    .line 655
    :cond_4
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " tuneToStoredRadioBandChannel mCurrentRds = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " station = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez v1, :cond_5

    .line 658
    new-instance v1, Lcom/android/car/radio/service/RadioStation;

    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    iget-object v3, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 661
    :cond_5
    invoke-virtual {p0, v1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToRadioChannel(Lcom/android/car/radio/service/RadioStation;)V

    return-void
.end method

.method private updateRadioBandDisplayState()V
    .locals 3

    .line 669
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "updateRadioBandDisplayState()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 685
    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->onChannelBandUpdate(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "FM"

    .line 678
    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->onChannelBandUpdate(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "AM"

    .line 682
    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->onChannelBandUpdate(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelScanning()V
    .locals 4

    .line 251
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "cancelScanning()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->cancel()V

    .line 257
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_1

    return-void

    .line 261
    :cond_1
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyHideSearchingDialog()V

    .line 262
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyHideScanningDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 265
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSeekingOrScanning(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cancelSeekingOrScanning()V
    .locals 4

    .line 274
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "cancelSeekingOrScanning()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->cancelSeekingOrScanning()V

    .line 280
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_1

    return-void

    .line 284
    :cond_1
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyHideSearchingDialog()V

    .line 285
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyHideScanningDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSeekingOrScanning(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clearFavoriteData(I)V
    .locals 2

    .line 344
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "clearFavoriteData"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->clearFavorite(I)V

    :cond_0
    return-void
.end method

.method public currentStationIsFavorite()Z
    .locals 3

    .line 501
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentStationIsFavorite  mCurrentChannelNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 503
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    invoke-virtual {v0, v1, v2}, Lcom/saicmotor/radio/model/RadioStorage;->isFavorite(II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteSelectRadioStation(Lcom/android/car/radio/service/RadioStation;)V
    .locals 4

    .line 452
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "deleteSelectRadioStation()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 454
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "Attempting to store invalid radio station as a favorite. Ignoring"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->isFavorite(Lcom/android/car/radio/service/RadioStation;)Z

    move-result v0

    .line 459
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggling favorite for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tIs currently a favorite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->removeFavorite(Lcom/android/car/radio/service/RadioStation;)V

    goto :goto_0

    .line 464
    :cond_1
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "he currently deleted frequency is not in the favorites folder "

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentRadioBand()I
    .locals 2

    .line 165
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "getCurrentRadioBand()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    return v0
.end method

.method public getCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;
    .locals 5

    .line 176
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "getCurrentRadioStation()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 181
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->getCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 183
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRadioStation(); error retrieving current station: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public getFavoriteStations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "getFavoriteStations()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 200
    :cond_0
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->getFavoriteForBand(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreScannedStations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;"
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "getPreScannedStations()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 214
    :cond_0
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->getPreScannedStationsForBand(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/view/View;)V
    .locals 1

    .line 61
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "initialize()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez p1, :cond_0

    .line 64
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "initialize() error"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "initialize() Finished."

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public isMute()Z
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 492
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->isMuted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 494
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$new$0$CarRadioBandPresenter()V
    .locals 2

    .line 1115
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyReverseOn()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->cancelSeekingOrScanning()V

    return-void
.end method

.method public mute(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRadioWasPlaying(Z)V

    .line 471
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 477
    :try_start_0
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToStoredRadioBandChannel()V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->mute(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 481
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    return v1
.end method

.method public onCurrentRadioStationChanged()V
    .locals 0

    return-void
.end method

.method public onFavoriteRefreshed()V
    .locals 4

    .line 546
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onFavoriteRefreshed()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    iget v3, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    invoke-virtual {v1, v2, v3}, Lcom/saicmotor/radio/model/RadioStorage;->isFavorite(II)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyChannelIsFavorite(Z)V

    .line 555
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyUpdateFavoriteList()V

    return-void
.end method

.method public onPreScannedChannelChange(I)V
    .locals 1

    .line 570
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onPreScannedChannelChange()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez p1, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-interface {p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyUpdatePreScannedList()V

    return-void
.end method

.method public onUpdateDabLogo([B)V
    .locals 0

    return-void
.end method

.method public maybeAutoResume()V
    .locals 2

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioWasPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mute(Z)Z

    :cond_0
    return-void
.end method

.method public resumeChannel()V
    .locals 5

    .line 120
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "resumeChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 124
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->hasFocus()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeChannel() -> hasFocus(); remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    .line 129
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Trying to resumeChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    .line 131
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->openRadioBand(I)V

    .line 132
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToStoredRadioBandChannel()V

    .line 133
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->updateRadioDisplay()V

    goto :goto_1

    .line 135
    :cond_0
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Do not need to resumeChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public scan()V
    .locals 4

    .line 237
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "scan()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->clearMetadataDisplay()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public seek(Z)V
    .locals 3

    .line 219
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek() isForward ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->clearMetadataDisplay()V

    if-eqz p1, :cond_1

    .line 226
    :try_start_0
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {p1}, Lcom/android/car/radio/service/IRadioManager;->seekForward()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {p1}, Lcom/android/car/radio/service/IRadioManager;->seekBackward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRadioStationChangeListener(Lcom/saicmotor/radio/listener/RadioStationChangeListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mStationChangeListener:Lcom/saicmotor/radio/listener/RadioStationChangeListener;

    return-void
.end method

.method public showFavoriteList()V
    .locals 2

    .line 429
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "showFavoriteList"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyShowFavoriteList()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioListType(I)V

    :cond_1
    return-void
.end method

.method public showPreScannedList()V
    .locals 2

    .line 441
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-eqz v0, :cond_0

    .line 443
    invoke-interface {v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyShowPreScannedList()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 446
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioListType(I)V

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 82
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "shutdown()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallBack:Lcom/saicmotor/radio/listener/MessageFactory$MessageCallBack;

    invoke-static {v0}, Lcom/saicmotor/radio/listener/MessageFactory;->unRegisterServiceReadyCallback(Lcom/saicmotor/radio/listener/MessageFactory$MessageCallBack;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mStationChangeListener:Lcom/saicmotor/radio/listener/RadioStationChangeListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mStationChangeListener:Lcom/saicmotor/radio/listener/RadioStationChangeListener;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/model/RadioStorage;->removeFavoriteChangeListener(Lcom/saicmotor/radio/model/RadioStorage$FavoriteChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/model/RadioStorage;->removePreScannedChannelChangeListener(Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;)V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_3

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallback:Lcom/android/car/radio/service/IRadioCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/car/radio/service/IRadioManager;->removeRadioTunerCallback(Lcom/android/car/radio/service/IRadioCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 105
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRadioTunerCallback(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 72
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/saicmotor/radio/service/RadioService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Failed to connect to RadioService."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public step(Z)V
    .locals 4

    .line 357
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step() isForward ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->clearMetadataDisplay()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 367
    :try_start_0
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-nez p1, :cond_1

    .line 368
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_STEP:I

    add-int/2addr p1, v0

    .line 369
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MAX:I

    if-le p1, v0, :cond_5

    .line 370
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    goto :goto_0

    .line 372
    :cond_1
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-ne p1, v0, :cond_4

    .line 373
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_STEP:I

    add-int/2addr p1, v0

    .line 374
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MAX:I

    if-le p1, v0, :cond_5

    .line 375
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    goto :goto_0

    .line 380
    :cond_2
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-nez p1, :cond_3

    .line 381
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_STEP:I

    sub-int/2addr p1, v0

    .line 382
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    if-ge p1, v0, :cond_5

    .line 383
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MAX:I

    goto :goto_0

    .line 385
    :cond_3
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    if-ne p1, v0, :cond_4

    .line 386
    iget p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_STEP:I

    sub-int/2addr p1, v0

    .line 387
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    if-ge p1, v0, :cond_5

    .line 388
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MAX:I

    goto :goto_0

    :cond_4
    move p1, v1

    .line 392
    :cond_5
    :goto_0
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step - nextChannelNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->getFMRadioStationForChannel(I)Lcom/android/car/radio/service/RadioStation;

    move-result-object v0

    if-nez v0, :cond_6

    .line 395
    new-instance v0, Lcom/android/car/radio/service/RadioStation;

    iget v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 398
    :cond_6
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {p1, v0}, Lcom/android/car/radio/service/IRadioManager;->tune(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 401
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step(); remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public switchFavoriteStatus()V
    .locals 5

    .line 294
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "switchFavoriteStatus()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 296
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Attempting to store invalid radio station as a favorite. Ignoring"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 299
    :cond_0
    new-instance v0, Lcom/android/car/radio/service/RadioStation;

    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentChannelNumber:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRadioBand:I

    iget-object v4, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 301
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v1, :cond_3

    .line 302
    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/model/RadioStorage;->isFavorite(Lcom/android/car/radio/service/RadioStation;)Z

    move-result v1

    .line 303
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toggling favorite for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n\tIs currently a favorite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 306
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->removeFavorite(Lcom/android/car/radio/service/RadioStation;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->storeFavorite(Lcom/android/car/radio/service/RadioStation;)V

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    xor-int/lit8 v1, v1, 0x1

    .line 316
    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyChannelIsFavorite(Z)V

    :cond_3
    return-void
.end method

.method public switchFavoriteStatusWithRadioStation(Lcom/android/car/radio/service/RadioStation;)V
    .locals 4

    .line 322
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "switchFavoriteStatusWithRadioStation()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->isFavorite(Lcom/android/car/radio/service/RadioStation;)Z

    move-result v0

    .line 325
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggling favorite for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tIs currently a favorite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1, p1}, Lcom/saicmotor/radio/model/RadioStorage;->removeFavorite(Lcom/android/car/radio/service/RadioStation;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1, p1}, Lcom/saicmotor/radio/model/RadioStorage;->storeFavorite(Lcom/android/car/radio/service/RadioStation;)V

    .line 334
    :goto_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    .line 338
    invoke-interface {p1, v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;->notifyChannelIsFavorite(Z)V

    :cond_2
    return-void
.end method

.method public switchPlayStatus(Z)V
    .locals 3

    .line 407
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchPlayStatus() isPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "switchPlayStatus FastClick."

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToStoredRadioBandChannel()V

    goto :goto_0

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 419
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/car/radio/service/IRadioManager;->tuneStop(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPauseButtonClickListener(); remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public tuneToRadioChannel(Lcom/android/car/radio/service/RadioStation;)V
    .locals 3

    .line 147
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tuneToRadioChannel():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->tune(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tuneToRadioChannel(); remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateRadioDisplay()V
    .locals 5

    .line 514
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "updateRadioDisplay()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 519
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    .line 520
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioChannel(I)I

    move-result v1

    .line 521
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v1}, Lcom/saicmotor/radio/model/RadioStorage;->getFMRadioStationForChannel(I)Lcom/android/car/radio/service/RadioStation;

    move-result-object v2

    if-nez v2, :cond_1

    .line 523
    new-instance v2, Lcom/android/car/radio/service/RadioStation;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 525
    :cond_1
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRadioDisplay(); current station: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2}, Lcom/android/car/radio/service/RadioStation;->getRadioBand()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setCurrentRadioBand(I)V

    .line 528
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->updateRadioBandDisplayState()V

    .line 531
    invoke-virtual {v2}, Lcom/android/car/radio/service/RadioStation;->getChannelNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setRadioChannel(I)V

    .line 532
    invoke-direct {p0, v2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setRadioName(Lcom/android/car/radio/service/RadioStation;)V

    .line 534
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallback:Lcom/android/car/radio/service/IRadioCallback$Stub;

    invoke-virtual {v2}, Lcom/android/car/radio/service/RadioStation;->getRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/radio/service/IRadioCallback$Stub;->onRadioMetadataChanged(Lcom/android/car/radio/service/RadioRds;)V

    .line 535
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mCallback:Lcom/android/car/radio/service/IRadioCallback$Stub;

    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v1}, Lcom/android/car/radio/service/IRadioManager;->isMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/radio/service/IRadioCallback$Stub;->onUpdateRadioMuteState(Z)V

    .line 536
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mStationChangeListener:Lcom/saicmotor/radio/listener/RadioStationChangeListener;

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mStationChangeListener:Lcom/saicmotor/radio/listener/RadioStationChangeListener;

    invoke-interface {v0, v2}, Lcom/saicmotor/radio/listener/RadioStationChangeListener;->onRadioStationChanged(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 540
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRadioDisplay(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
