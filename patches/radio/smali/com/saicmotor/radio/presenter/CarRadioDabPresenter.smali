.class public Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;
.super Lcom/saicmotor/radio/contract/CarRadioContract$AbstractCarRadioDabPresenter;
.source "CarRadioDabPresenter.java"

# interfaces
.implements Lcom/saicmotor/radio/model/RadioStorage$FavoriteChangeListener;
.implements Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;


# instance fields
.field private final mCallback:Lcom/android/car/radio/service/IDabCallback$Stub;

.field private mContext:Landroid/content/Context;

.field private mCurrentRadioBand:I

.field private final mDabProgramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/saicmotor/radio/model/bean/DabProgramBean;",
            ">;"
        }
    .end annotation
.end field

.field private mOnProgramChangeListener:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;

.field private mRadioManager:Lcom/android/car/radio/service/IRadioManager;

.field private mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

.field private mSelectedDate:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/saicmotor/radio/contract/CarRadioContract$AbstractCarRadioDabPresenter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mDabProgramList:Ljava/util/List;

    const/4 v0, 0x4

    .line 42
    iput v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mCurrentRadioBand:I

    .line 533
    new-instance v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$1;-><init>(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V

    iput-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 686
    new-instance v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$2;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$2;-><init>(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V

    iput-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mCallback:Lcom/android/car/radio/service/IDabCallback$Stub;

    .line 125
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {p1}, Lcom/saicmotor/radio/model/RadioStorage;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1, p0}, Lcom/saicmotor/radio/model/RadioStorage;->addFavoriteChangeListener(Lcom/saicmotor/radio/model/RadioStorage$FavoriteChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p1, p0}, Lcom/saicmotor/radio/model/RadioStorage;->addPreScannedChannelChangeListener(Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/saicmotor/radio/utils/log/Logger;
    .locals 1

    .line 31
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IRadioManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;Lcom/android/car/radio/service/IRadioManager;)Lcom/android/car/radio/service/IRadioManager;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/android/car/radio/service/IDabCallback$Stub;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mCallback:Lcom/android/car/radio/service/IDabCallback$Stub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/saicmotor/radio/model/RadioStorage;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    return-object p0
.end method

.method static synthetic access$500(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->openRadioBand(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->tuneToStoredRadioDabStation()V

    return-void
.end method

.method static synthetic access$700(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->preloadList()V

    return-void
.end method

.method static synthetic access$800(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->updateRadioDabDisplay()V

    return-void
.end method

.method static synthetic access$900(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getDabProgramDataWithDate(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/saicmotor/radio/model/bean/DabProgramBean;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabProgramList()Ljava/util/List;

    move-result-object v1

    .line 140
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dabProgramList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/saicmotor/radio/model/bean/DabProgramBean;

    .line 142
    invoke-static {}, Lcom/saicmotor/radio/utils/TimeFormat;->getInstance()Lcom/saicmotor/radio/utils/TimeFormat;

    move-result-object v3

    invoke-virtual {v2}, Lcom/saicmotor/radio/model/bean/DabProgramBean;->getTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/saicmotor/radio/utils/TimeFormat;->getTowNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private openRadioBand(I)V
    .locals 3

    .line 592
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openRadioBand():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 598
    :cond_0
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->setCurrentRadioBand(I)V

    .line 599
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_1

    .line 600
    iget v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mCurrentRadioBand:I

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioBand(I)V

    .line 604
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->openRadioBand(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 606
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openRadioBand(); remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private preloadList()V
    .locals 2

    .line 645
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-eqz v0, :cond_0

    .line 647
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabFavorite()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabFavoriteListChanged(Ljava/util/List;)V

    .line 648
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabStationListInfoChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private replaceProgramList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/saicmotor/radio/model/bean/DabProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceProgramList(): programList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mDabProgramList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 526
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mDabProgramList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setCurRadio()V
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 672
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v2, "setCurRadio(): cur DAB radio is null"

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabStationList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 674
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 675
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/radio/service/RadioDabStation;

    .line 678
    :cond_1
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurRadio(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez v1, :cond_2

    return-void

    .line 683
    :cond_2
    invoke-interface {v1, v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabInfoChanged(Lcom/android/car/radio/service/RadioDabStation;)V

    return-void
.end method

.method private setCurrentRadioBand(I)V
    .locals 3

    .line 611
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentRadioBand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 612
    iget v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mCurrentRadioBand:I

    if-ne v0, p1, :cond_0

    return-void

    .line 615
    :cond_0
    iput p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mCurrentRadioBand:I

    return-void
.end method

.method private tuneToStoredRadioDabStation()V
    .locals 5

    .line 620
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "tuneToStoredRadioDabStation()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_3

    .line 625
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabStationList()Ljava/util/List;

    move-result-object v1

    .line 627
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDabStationListInfoChanged radioDabStation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 629
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    const/4 v0, 0x0

    .line 630
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/radio/service/RadioDabStation;

    .line 631
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioDabStation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_1
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioDabStation != null , = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 637
    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v1, v0}, Lcom/android/car/radio/service/IRadioManager;->dabTune(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 639
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateProgramListByDate(Ljava/lang/String;)V
    .locals 1

    .line 517
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getDabProgramDataWithDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->replaceProgramList(Ljava/util/List;)V

    .line 518
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mOnProgramChangeListener:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;

    if-eqz p1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mDabProgramList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;->onProgramInfoListChange(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateRadioDabDisplay()V
    .locals 0

    .line 661
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->onFavoriteRefreshed()V

    .line 662
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->setCurRadio()V

    return-void
.end method


# virtual methods
.method public cancelOrderProgram(Lcom/saicmotor/radio/model/bean/DabProgramBean;)V
    .locals 3

    .line 295
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOrderProgram() programName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/saicmotor/radio/model/bean/DabProgramBean;->getProgrammeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ProgramAlarm;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/ProgramAlarm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/ProgramAlarm;->cancelProgramData(Lcom/saicmotor/radio/model/bean/DabProgramBean;)V

    return-void
.end method

.method public clearDabFavoriteData()V
    .locals 2

    .line 246
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "clearDabFavoriteData"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->clearDabFavorite()V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez v0, :cond_1

    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabFavorite()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabFavoriteListChanged(Ljava/util/List;)V

    return-void
.end method

.method public currentDabStationIsFavorite()Z
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getCurrentRadioDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->isDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dabClose()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 303
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->dabClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dabScan(I)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->dabScan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dabSeek(Z)V
    .locals 3

    .line 323
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek() isForward ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getDabNextValidStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object p1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getDabPreValidStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 335
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "seek() - no find valid stations"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    .line 339
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->dabSwitchSource(I)V

    .line 340
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->dabTune(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 342
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek(); remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public dabServiceFollow(Z)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 385
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->dabServiceFollow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 387
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dabStep(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 363
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->dabStep(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dabSwitchSource(I)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->dabSwitchSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dabTune(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->dabTune(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 354
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteSelectRadioDabStation(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 4

    .line 479
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "deleteSelectRadioStation()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->isDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)Z

    move-result v0

    .line 482
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

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

    .line 485
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1, p1}, Lcom/saicmotor/radio/model/RadioStorage;->removeDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)V

    goto :goto_0

    .line 487
    :cond_0
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "he currently deleted frequency is not in the favorites folder "

    invoke-virtual {p1, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 491
    :goto_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    .line 495
    invoke-interface {p1, v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyCurrentDabStationIsFavorite(Z)V

    :cond_2
    return-void
.end method

.method public getCurrentRadioDabStation()Lcom/android/car/radio/service/RadioDabStation;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogoByte()[B
    .locals 2

    .line 653
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "getLogoByte"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentLogoByte()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRadioDabStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioDabStation;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getDabStationList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 175
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "initialize()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "initialize() error"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "initialize() Finished."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public isMute()Z
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->isMuted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 443
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

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

.method public loadProgramList()V
    .locals 3

    .line 260
    invoke-static {}, Lcom/saicmotor/radio/utils/TimeFormat;->getInstance()Lcom/saicmotor/radio/utils/TimeFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/TimeFormat;->getCurrentData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    .line 261
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadProgramList mSelectedDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getDabProgramDataWithDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->replaceProgramList(Ljava/util/List;)V

    .line 264
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mOnProgramChangeListener:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;->onSelectedDateChange(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mOnProgramChangeListener:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;

    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mDabProgramList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;->onProgramInfoListChange(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public mute(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRadioWasPlaying(Z)V

    .line 420
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 426
    :try_start_0
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->tuneToStoredRadioDabStation()V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->mute(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 430
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

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
    .locals 2

    .line 57
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onCurrentRadioStationChanged()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabInfoChanged(Lcom/android/car/radio/service/RadioDabStation;)V

    return-void
.end method

.method public onFavoriteRefreshed()V
    .locals 3

    .line 46
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onFavoriteRefreshed()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-eqz v0, :cond_1

    .line 48
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-nez v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/model/RadioStorage;->isDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyCurrentDabStationIsFavorite(Z)V

    .line 52
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabFavorite()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabFavoriteListChanged(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreScannedChannelChange(I)V
    .locals 5

    .line 77
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onPreScannedChannelChange()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 79
    sget-object p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onPreScannedChannelChange() return"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez p1, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1}, Lcom/saicmotor/radio/model/RadioStorage;->getDabStationList()Ljava/util/List;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDabStationListInfoChanged radioDabStation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/radio/service/RadioDabStation;

    .line 93
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioDabStation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 97
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->storeCurrentDabStation(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 98
    invoke-interface {p1, v0}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabInfoChanged(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 99
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->isDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyCurrentDabStationIsFavorite(Z)V

    goto :goto_0

    .line 101
    :cond_2
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v3, "notifyDabMainInfoChanged  getDabStationForServiceId = null"

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 105
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v2, v0}, Lcom/android/car/radio/service/IRadioManager;->dabTune(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 112
    :cond_3
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioDabStation != null , = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 114
    :cond_4
    :goto_1
    invoke-interface {p1, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabStationListInfoChanged(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public onUpdateDabLogo([B)V
    .locals 2

    .line 67
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onUpdateDabLogo()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-interface {v0, p1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyDabServiceLogoChanged([B)V

    return-void
.end method

.method public orderProgram(Lcom/saicmotor/radio/model/bean/DabProgramBean;)V
    .locals 3

    .line 289
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderProgram() programName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/saicmotor/radio/model/bean/DabProgramBean;->getProgrammeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ProgramAlarm;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/ProgramAlarm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/ProgramAlarm;->saveProgramData(Lcom/saicmotor/radio/model/bean/DabProgramBean;)V

    return-void
.end method

.method public queryDabStationList()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 411
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->queryDabStationList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 413
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public resumeChannel()V
    .locals 5

    .line 224
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "resumeChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 228
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->hasFocus()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    sget-object v2, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

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

    .line 233
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Trying to resumeChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    .line 235
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->openRadioBand(I)V

    .line 236
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->tuneToStoredRadioDabStation()V

    .line 237
    invoke-direct {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->updateRadioDabDisplay()V

    goto :goto_1

    .line 239
    :cond_0
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Do not need to resumeChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setDabAnnouncement(Landroid/hardware/radio/RadioDabInfo$AnnouncementInfo;)V
    .locals 0

    return-void
.end method

.method public setOnProgramChangeListener(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mOnProgramChangeListener:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;

    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 195
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "shutdown()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/model/RadioStorage;->removeFavoriteChangeListener(Lcom/saicmotor/radio/model/RadioStorage$FavoriteChangeListener;)V

    .line 209
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/model/RadioStorage;->removePreScannedChannelChangeListener(Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_2

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mCallback:Lcom/android/car/radio/service/IDabCallback$Stub;

    invoke-interface {v0, v1}, Lcom/android/car/radio/service/IRadioManager;->removeDabTunerCallback(Lcom/android/car/radio/service/IDabCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 217
    sget-object v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDrmTunerCallback(); remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 186
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/saicmotor/radio/service/RadioService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Failed to connect to RadioService."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopDabAnnouncement()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    invoke-interface {v0}, Lcom/android/car/radio/service/IRadioManager;->stopDabAnnouncement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public switchDabFavoriteStatus()V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {v0}, Lcom/android/car/radio/service/RadioDabStation;->getServiceId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/model/RadioStorage;->isDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->removeDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->storeDabFavorite(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 461
    :goto_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    xor-int/lit8 v1, v1, 0x1

    .line 465
    invoke-interface {v0, v1}, Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;->notifyCurrentDabStationIsFavorite(Z)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method public updateProgramSelectedDate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 273
    invoke-static {}, Lcom/saicmotor/radio/utils/TimeFormat;->getInstance()Lcom/saicmotor/radio/utils/TimeFormat;

    move-result-object p1

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/TimeFormat;->getNextDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {}, Lcom/saicmotor/radio/utils/TimeFormat;->getInstance()Lcom/saicmotor/radio/utils/TimeFormat;

    move-result-object p1

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/TimeFormat;->getPreviousDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    .line 279
    :goto_0
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mOnProgramChangeListener:Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;

    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter$OnProgramChangeListener;->onSelectedDateChange(Ljava/lang/String;)V

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mSelectedDate:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->updateProgramListByDate(Ljava/lang/String;)V

    return-void
.end method

.method public maybeAutoResume()V
    .locals 2

    iget-object v0, p0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioWasPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mute(Z)Z

    :cond_0
    return-void
.end method
