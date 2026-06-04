.class public Lcom/saicmotor/radio/service/RadioMBService;
.super Landroid/service/media/MediaBrowserService;
.source "RadioMBService.java"


# static fields
.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;

.field private static final MSG_LONG_PRESS_FAST_FORWARD:I = 0x1

.field private static final MSG_LONG_PRESS_REWIND:I = 0x0

.field private static final SESSION_ACTIONS:J = 0x1436L

.field private static final TIME_INTERVAL:I = 0x1f4


# instance fields
.field private final iRadioMBSCallback:Lcom/android/car/radio/service/IRadioMBSCallback;

.field private mArtistString:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mRadioDabStation:Lcom/android/car/radio/service/RadioDabStation;

.field private mRadioManager:Lcom/android/car/radio/service/IRadioManager;

.field private mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSession:Landroid/media/session/MediaSession;

.field private mSessionCallback:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/service/RadioMBService;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioDabStation:Lcom/android/car/radio/service/RadioDabStation;

    const-string v1, ""

    .line 44
    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/service/RadioMBService$1;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/RadioMBService$1;-><init>(Lcom/saicmotor/radio/service/RadioMBService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/saicmotor/radio/service/RadioMBService$2;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/service/RadioMBService$2;-><init>(Lcom/saicmotor/radio/service/RadioMBService;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 218
    new-instance v0, Lcom/saicmotor/radio/service/RadioMBService$3;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/service/RadioMBService$3;-><init>(Lcom/saicmotor/radio/service/RadioMBService;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSessionCallback:Landroid/media/session/MediaSession$Callback;

    .line 472
    new-instance v0, Lcom/saicmotor/radio/service/RadioMBService$4;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/service/RadioMBService$4;-><init>(Lcom/saicmotor/radio/service/RadioMBService;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->iRadioMBSCallback:Lcom/android/car/radio/service/IRadioMBSCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/saicmotor/radio/service/RadioMBService;)Lcom/android/car/radio/service/IRadioManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/saicmotor/radio/service/RadioMBService;Lcom/android/car/radio/service/IRadioManager;)Lcom/android/car/radio/service/IRadioManager;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    return-object p1
.end method

.method static synthetic access$100()Lcom/saicmotor/radio/utils/log/Logger;
    .locals 1

    .line 38
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/saicmotor/radio/service/RadioMBService;)Lcom/android/car/radio/service/RadioDabStation;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioDabStation:Lcom/android/car/radio/service/RadioDabStation;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/saicmotor/radio/service/RadioMBService;Lcom/android/car/radio/service/RadioDabStation;)Lcom/android/car/radio/service/RadioDabStation;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioDabStation:Lcom/android/car/radio/service/RadioDabStation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/saicmotor/radio/service/RadioMBService;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/saicmotor/radio/service/RadioMBService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/saicmotor/radio/service/RadioMBService;)Landroid/graphics/Bitmap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/saicmotor/radio/service/RadioMBService;Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/saicmotor/radio/service/RadioMBService;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/saicmotor/radio/service/RadioMBService;)Lcom/android/car/radio/service/IRadioMBSCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->iRadioMBSCallback:Lcom/android/car/radio/service/IRadioMBSCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/saicmotor/radio/service/RadioMBService;)Landroid/media/session/PlaybackState;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method static synthetic access$402(Lcom/saicmotor/radio/service/RadioMBService;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/saicmotor/radio/service/RadioMBService;IZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/saicmotor/radio/service/RadioMBService;->changeSource(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/saicmotor/radio/service/RadioMBService;)Landroid/media/session/MediaSession;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    return-object p0
.end method

.method static synthetic access$700(Lcom/saicmotor/radio/service/RadioMBService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionPlaybackStatePaused()V

    return-void
.end method

.method static synthetic access$800(Lcom/saicmotor/radio/service/RadioMBService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/saicmotor/radio/service/RadioMBService;Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataDabTitle(Lcom/android/car/radio/service/RadioDabStation;)V

    return-void
.end method

.method private changeSource(IZ)V
    .locals 6

    .line 402
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSource: curBand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isNext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/saicmotor/radio/utils/FeatureUtil;->getRadioBands()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    add-int/2addr p1, v3

    .line 411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    add-int/2addr p1, v1

    if-ltz p1, :cond_3

    goto :goto_1

    .line 414
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 418
    :goto_2
    sget-object p2, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSource: resultBand = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 420
    iget-object p2, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p2}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object p2

    .line 421
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getDabStationList()Ljava/util/List;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeSource radioDabStation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 424
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_5

    .line 425
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/car/radio/service/RadioDabStation;

    .line 426
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 429
    :cond_4
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSource radioDabStation != null , = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 432
    :cond_5
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {v0, p1}, Lcom/android/car/radio/service/IRadioManager;->openRadioBand(I)I

    .line 433
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioMBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioBand(I)V

    .line 434
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {p1, p2}, Lcom/android/car/radio/service/IRadioManager;->dabTune(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    .line 439
    :cond_6
    iget-object p2, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p2, p1}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioChannel(I)I

    move-result p2

    .line 440
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "changeSource(); band: %s, channel %s"

    .line 440
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-ne p2, v1, :cond_9

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    goto :goto_4

    .line 445
    :cond_7
    sget p2, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    goto :goto_4

    .line 449
    :cond_8
    sget p2, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    :cond_9
    :goto_4
    const/4 v0, 0x0

    if-ne p1, v3, :cond_a

    .line 457
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getRadioRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object v0

    .line 458
    sget-object v1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " changeSource mCurrentRds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 460
    :cond_a
    new-instance v1, Lcom/android/car/radio/service/RadioStation;

    invoke-direct {v1, p2, v2, p1, v0}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 463
    :try_start_1
    iget-object p2, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {p2, p1}, Lcom/android/car/radio/service/IRadioManager;->openRadioBand(I)I

    .line 464
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioMBService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/saicmotor/radio/model/RadioStorage;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioBand(I)V

    .line 465
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioManager:Lcom/android/car/radio/service/IRadioManager;

    invoke-interface {p1, v1}, Lcom/android/car/radio/service/IRadioManager;->tune(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 467
    sget-object p2, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSource; remote exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private initState()V
    .locals 7

    .line 123
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "initState"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionPlaybackStatePaused()V

    .line 125
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioChannel(I)I

    move-result v1

    const-string v2, ""

    const-string v3, "FM"

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    move-object v3, v2

    goto :goto_1

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v4}, Lcom/saicmotor/radio/model/RadioStorage;->getRadioRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 138
    invoke-virtual {v4}, Lcom/android/car/radio/service/RadioRds;->getProgramService()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {v4}, Lcom/android/car/radio/service/RadioRds;->getProgramService()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "AM"

    :cond_2
    :goto_0
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 144
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/saicmotor/radio/utils/RadioChannelFormatter;->formatRadioChannel(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0, v3}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataDabTitle(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 148
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    .line 150
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentLogoByte()[B

    move-result-object v2

    if-nez v2, :cond_4

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 154
    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 157
    :cond_5
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v2, "updateDabServiceLogo mRadioStorage = null"

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 159
    :goto_2
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/saicmotor/radio/service/RadioMBService;->toSetSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V

    :goto_3
    return-void
.end method

.method private toSetSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V
    .locals 7

    const-string v0, "android.media.metadata.ARTIST"

    const-string v1, "android.media.metadata.TITLE"

    const-string v2, "setSessionMetadataDabBitmap mSession = null"

    const-string v3, "DAB"

    const-string v4, "android.media.metadata.AUTHOR"

    if-nez p1, :cond_1

    .line 581
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string p2, "setSessionMetadataDabBitmap radioDabStation = null"

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 582
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_0

    .line 583
    new-instance p2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {p2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v2, ""

    .line 584
    invoke-virtual {p2, v1, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p2

    .line 585
    invoke-virtual {p2, v0, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p2

    .line 586
    invoke-virtual {p2, v4, v3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p2

    .line 587
    invoke-virtual {p2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p2

    .line 583
    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 590
    :cond_0
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {p1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 595
    :cond_1
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioDabStation:Lcom/android/car/radio/service/RadioDabStation;

    .line 596
    iput-object p2, p0, Lcom/saicmotor/radio/service/RadioMBService;->mBitmap:Landroid/graphics/Bitmap;

    .line 597
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioDabStation;->getServiceName()Ljava/lang/String;

    move-result-object p1

    .line 598
    sget-object p2, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSessionMetadataDabBitmap title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    mArtistString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 600
    sget-object p2, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v5, "setSessionMetadataDabBitmap title = null,return"

    invoke-virtual {p2, v5}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 603
    :cond_2
    new-instance p2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {p2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 604
    invoke-virtual {p2, v4, v3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 606
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    goto :goto_1

    .line 608
    :cond_3
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionMetadataDabBitmap title = null"

    invoke-virtual {p1, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 610
    :goto_1
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 611
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    goto :goto_2

    .line 613
    :cond_4
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setSessionMetadataDabBitmap artist = null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 615
    :goto_2
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mBitmap:Landroid/graphics/Bitmap;

    const-string v0, "android.media.metadata.ALBUM_ART"

    if-eqz p1, :cond_5

    .line 616
    invoke-virtual {p2, v0, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 618
    invoke-virtual {p2, v0, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 619
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setSessionMetadataDabBitmap mBitmap = null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 621
    :goto_3
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_6

    .line 622
    invoke-virtual {p2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_4

    .line 624
    :cond_6
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {p1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private toSetSessionMetadataDabTitle(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 12

    const-string v0, "android.media.metadata.ALBUM_ART"

    const-string v1, "DAB"

    const-string v2, "android.media.metadata.AUTHOR"

    const-string v3, "android.media.metadata.ARTIST"

    const-string v4, "android.media.metadata.TITLE"

    const-string v5, "setSessionMetadataDabTitle mSession = null"

    const/4 v6, 0x0

    const-string v7, ""

    if-nez p1, :cond_1

    .line 630
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v8, "setSessionMetadataDabTitle radioDabStation = null"

    invoke-virtual {p1, v8}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 631
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_0

    .line 639
    new-instance v5, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v5}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 640
    invoke-virtual {v5, v4, v7}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v4

    .line 641
    invoke-virtual {v4, v3, v7}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v3

    .line 642
    invoke-virtual {v3, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v1

    .line 643
    invoke-virtual {v1, v0, v6}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 639
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 647
    :cond_0
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {p1, v5}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v8, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioDabStation:Lcom/android/car/radio/service/RadioDabStation;

    if-eqz v8, :cond_2

    .line 652
    invoke-virtual {v8}, Lcom/android/car/radio/service/RadioDabStation;->getServiceId()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioDabStation;->getServiceId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 653
    sget-object v8, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v9, "current radioDabStation = mRadioDabStation, return"

    invoke-virtual {v8, v9}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 654
    iput-object v6, p0, Lcom/saicmotor/radio/service/RadioMBService;->mBitmap:Landroid/graphics/Bitmap;

    .line 655
    iput-object v7, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    goto :goto_1

    .line 658
    :cond_2
    sget-object v8, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v9, "setSessionMetadataDabTitle mRadioDabStation = null"

    invoke-virtual {v8, v9}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 659
    iput-object v6, p0, Lcom/saicmotor/radio/service/RadioMBService;->mBitmap:Landroid/graphics/Bitmap;

    .line 660
    iput-object v7, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    .line 662
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioDabStation:Lcom/android/car/radio/service/RadioDabStation;

    .line 664
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioDabStation;->getServiceName()Ljava/lang/String;

    move-result-object p1

    .line 665
    sget-object v6, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSessionMetadataDabTitle  title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "   mArtistString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 670
    new-instance v6, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v6}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 671
    invoke-virtual {v6, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v4, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    goto :goto_2

    .line 675
    :cond_4
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionMetadataArtist title = null"

    invoke-virtual {p1, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 677
    :goto_2
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 678
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mArtistString:Ljava/lang/String;

    invoke-virtual {v6, v3, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    goto :goto_3

    .line 680
    :cond_5
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionMetadataArtist artist = null"

    invoke-virtual {p1, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 684
    :goto_3
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v0, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 688
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_6

    .line 689
    invoke-virtual {v6}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_4

    .line 691
    :cond_6
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {p1, v5}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private toSetSessionMetadataTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string p2, "title = null"

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 701
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 702
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    .line 703
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    .line 704
    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 701
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_1
    return-void
.end method

.method private toSetSessionPlaybackStatePaused()V
    .locals 5

    .line 711
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 712
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1436

    .line 713
    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 715
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 718
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 101
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 102
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onCreate: RadioMBService"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioMBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioMBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/saicmotor/radio/service/RadioService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/saicmotor/radio/service/RadioMBService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "Failed to connect to RadioService."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 110
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 112
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "RadioMBService"

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    .line 113
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/service/RadioMBService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 114
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    const v1, 0x10003

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 117
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 118
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioMBService;->mSessionCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 119
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioMBService;->initState()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioMBService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/service/RadioMBService;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 0

    .line 181
    sget-object p1, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string p2, "onGetRoot"

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 182
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p2, "_ROOT_"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/saicmotor/radio/service/RadioMBService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren_parentId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method
