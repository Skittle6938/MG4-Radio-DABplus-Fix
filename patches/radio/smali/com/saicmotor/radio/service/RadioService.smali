.class public Lcom/saicmotor/radio/service/RadioService;
.super Landroid/app/Service;
.source "RadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;,
        Lcom/saicmotor/radio/service/RadioService$InternalRadioCallback;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;

.field private static final MSG_DELAY_CANCEL_SCAN:I = 0x3

.field private static final MSG_DELAY_CANCEL_SEEK:I = 0x4

.field private static final MSG_NOTIFY_FM_SCAN_CALLBACK_FINISH:I = 0x5

.field private static final MSG_NOTIFY_SCAN_FINISH:I = 0x1

.field private static final MSG_NOTIFY_SEEK_FINISH:I = 0x2

.field private static final RADIO_SERVICE_ROOT_ID:Ljava/lang/String; = "__RADIO_ROOT__"

.field private static mRadioTunerReopenDelayTime:I


# instance fields
.field private isCPMediaRequestAudioFocus:Z

.field private isNewCallback:Z

.field private mAccOffStatus:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioRequest:Landroid/media/AudioFocusRequest;

.field private mAudioSourceId:I

.field private mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

.field private mCallback:Lcom/saicmotor/carapi/general/ICarGeneralCallback;

.field private mCarAdapterClient:Lcom/saicmotor/carapi/CarAdapterClient;

.field private mCarAudioManager:Landroid/media/AudioManager;

.field private mCarConfigClient:Lcom/saicmotor/carapi/client/CarConfigClient;

.field private mCarEvsClient:Lcom/saicmotor/carapi/client/CarEvsClient;

.field private mCarGeneralClient:Lcom/saicmotor/carapi/client/CarGeneralClient;

.field private mCarplayAAPScreenShowingStatus:Z

.field private mContext:Landroid/content/Context;

.field private mCurSeekStation:Lcom/android/car/radio/service/RadioStation;

.field private mCurrentRadioBand:I

.field private mCurrentRadioBandForEol:I

.field private mCurrentRadioChannel:I

.field private mCurrentRadioChannelForEol:I

.field private mCurrentRadioSubChannel:I

.field private mCurrentRds:Lcom/android/car/radio/service/RadioRds;

.field private mDabRadioStationManager:Lcom/saicmotor/radio/manager/DabRadioStationManager;

.field private mDabTunerCallback:Landroid/hardware/radio/DabTuner$Callback;

.field private mDabTunerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/car/radio/service/IDabCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureClient:Lcom/saicmotor/carapi/client/FeatureClient;

.field private final mHandler:Landroid/os/Handler;

.field private mHasAudioFocus:Z

.field private mHasAudioFocusTransient:Z

.field private mICarEvsCallback:Lcom/saicmotor/carapi/evs/ICarEvsCallback;

.field private mInternalTunerCallback:Landroid/hardware/radio/RadioTuner$Callback;

.field private mIsPlaying:Ljava/lang/Boolean;

.field private mListener:Lcom/saicmotor/radio/listener/RadioBinderListener;

.field private final mOpenRadioTunerRunnable:Ljava/lang/Runnable;

.field private mRadioDabStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioDabStation;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/car/radio/service/IRadioMBSCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

.field private mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

.field private mRadioSuccessfullyInitialized:Z

.field private mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/car/radio/service/IRadioCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mReOpenRadioTunerCount:I

.field private mScannedStations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mScannedStationsAm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mScannedStationsFm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mStoppedByUser:Z

.field private final objectLock:Ljava/lang/Object;

.field private programReceiver:Lcom/saicmotor/radio/receiver/ProgramReceiver;

.field private resumeOnlySource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/service/RadioService;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const/16 v0, 0x64

    .line 84
    sput v0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerReopenDelayTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mReOpenRadioTunerCount:I

    const/4 v1, -0x1

    .line 92
    iput v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    .line 93
    iput v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    .line 94
    iput v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioSubChannel:I

    const/4 v2, 0x1

    .line 100
    iput v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBandForEol:I

    .line 101
    iput v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannelForEol:I

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStations:Ljava/util/List;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsAm:Ljava/util/List;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsFm:Ljava/util/List;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioDabStationList:Ljava/util/List;

    .line 115
    iput v2, p0, Lcom/saicmotor/radio/service/RadioService;->mAudioSourceId:I

    .line 119
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->isCPMediaRequestAudioFocus:Z

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->objectLock:Ljava/lang/Object;

    .line 127
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    .line 128
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    .line 129
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    .line 131
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    .line 132
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    .line 134
    new-instance v1, Lcom/saicmotor/radio/service/RadioService$InternalRadioCallback;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/saicmotor/radio/service/RadioService$InternalRadioCallback;-><init>(Lcom/saicmotor/radio/service/RadioService;Lcom/saicmotor/radio/service/RadioService$1;)V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mInternalTunerCallback:Landroid/hardware/radio/RadioTuner$Callback;

    .line 135
    new-instance v1, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;

    invoke-direct {v1, p0, v3}, Lcom/saicmotor/radio/service/RadioService$DabTunerCallback;-><init>(Lcom/saicmotor/radio/service/RadioService;Lcom/saicmotor/radio/service/RadioService$1;)V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallback:Landroid/hardware/radio/DabTuner$Callback;

    .line 136
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    .line 137
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarplayAAPScreenShowingStatus:Z

    .line 138
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mAccOffStatus:Z

    .line 150
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mIsPlaying:Ljava/lang/Boolean;

    .line 153
    iput-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->isNewCallback:Z

    .line 156
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/service/RadioService$1;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/RadioService$1;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    .line 1137
    new-instance v0, Lcom/saicmotor/radio/service/RadioService$6;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/service/RadioService$6;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mListener:Lcom/saicmotor/radio/listener/RadioBinderListener;

    .line 2796
    new-instance v0, Lcom/saicmotor/radio/service/RadioService$7;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/service/RadioService$7;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mOpenRadioTunerRunnable:Ljava/lang/Runnable;

    .line 3051
    new-instance v0, Lcom/saicmotor/radio/service/RadioService$8;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/service/RadioService$8;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCallback:Lcom/saicmotor/carapi/general/ICarGeneralCallback;

    .line 3106
    new-instance v0, Lcom/saicmotor/radio/service/RadioService$9;

    invoke-direct {v0, p0}, Lcom/saicmotor/radio/service/RadioService$9;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mICarEvsCallback:Lcom/saicmotor/carapi/evs/ICarEvsCallback;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 753
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "abandonAudioFocus()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mAudioRequest:Landroid/media/AudioFocusRequest;

    if-nez v1, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyRadioMuteStateChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->fmScanCallbackFinish()V

    return-void
.end method

.method static synthetic access$1200(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->updateDabServiceLogoToLauncher()V

    return-void
.end method

.method static synthetic access$1300(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerSearchStarted()V

    return-void
.end method

.method static synthetic access$1400(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerScanStarted()V

    return-void
.end method

.method static synthetic access$1500(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/manager/DabRadioStationManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabRadioStationManager:Lcom/saicmotor/radio/manager/DabRadioStationManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/manager/RadioStationManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerScanFinished()V

    return-void
.end method

.method static synthetic access$1900(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$200()Lcom/saicmotor/radio/utils/log/Logger;
    .locals 1

    .line 76
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/Handler;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeTunerChannel()V

    return-void
.end method

.method static synthetic access$2200(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeDabTunerChannel()V

    return-void
.end method

.method static synthetic access$2300(Lcom/saicmotor/radio/service/RadioService;)Lcom/android/car/radio/service/RadioStation;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurSeekStation:Lcom/android/car/radio/service/RadioStation;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/saicmotor/radio/service/RadioService;Lcom/android/car/radio/service/RadioStation;)Lcom/android/car/radio/service/RadioStation;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurSeekStation:Lcom/android/car/radio/service/RadioStation;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/model/RadioStorage;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->openTunerFmAm()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/saicmotor/radio/service/RadioService;)Landroid/media/AudioManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/saicmotor/radio/service/RadioService;)I
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/saicmotor/radio/service/RadioService;I)I
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->openRadioBandInternal(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/saicmotor/radio/service/RadioService;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    return p1
.end method

.method static synthetic access$300(Lcom/saicmotor/radio/service/RadioService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    return p0
.end method

.method static synthetic access$3000(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePaused()V

    return-void
.end method

.method static synthetic access$3100(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePlaying()V

    return-void
.end method

.method static synthetic access$3200(Lcom/saicmotor/radio/service/RadioService;)Lcom/android/car/radio/service/RadioStation;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->createCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/saicmotor/radio/service/RadioService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBandForEol:I

    return p0
.end method

.method static synthetic access$3400(Lcom/saicmotor/radio/service/RadioService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannelForEol:I

    return p0
.end method

.method static synthetic access$3402(Lcom/saicmotor/radio/service/RadioService;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannelForEol:I

    return p1
.end method

.method static synthetic access$3500(Lcom/saicmotor/radio/service/RadioService;II)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/saicmotor/radio/service/RadioService;->checkAvailableChannel(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/saicmotor/radio/service/RadioService;)Lcom/android/car/radio/service/RadioRds;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioSuccessfullyInitialized:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarplayAAPScreenShowingStatus:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/saicmotor/radio/service/RadioService;)Lcom/saicmotor/radio/service/RadioManagerBinder;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/saicmotor/radio/service/RadioService;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsAm:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/saicmotor/radio/service/RadioService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/saicmotor/radio/service/RadioService;->isCPMediaRequestAudioFocus:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/saicmotor/radio/service/RadioService;)Ljava/lang/Object;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->objectLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/saicmotor/radio/service/RadioService;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->audioFocusGain(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/saicmotor/radio/service/RadioService;->isNewCallback:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/saicmotor/radio/service/RadioService;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/saicmotor/radio/service/RadioService;->isNewCallback:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/saicmotor/radio/service/RadioService;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsFm:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/saicmotor/radio/service/RadioService;Ljava/util/List;Lcom/android/car/radio/service/RadioStation;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/saicmotor/radio/service/RadioService;->addOrReplaceInScannedStations(Ljava/util/List;Lcom/android/car/radio/service/RadioStation;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/saicmotor/radio/service/RadioService;ILjava/lang/Object;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/saicmotor/radio/service/RadioService;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/saicmotor/radio/service/RadioService;Lcom/android/car/radio/service/RadioStation;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->notifyRadioChanged(Lcom/android/car/radio/service/RadioStation;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/saicmotor/radio/service/RadioService;Lcom/android/car/radio/service/RadioStation;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->setSessionMetadataTitle(Lcom/android/car/radio/service/RadioStation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/saicmotor/radio/service/RadioService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    return p0
.end method

.method static synthetic access$5000(Lcom/saicmotor/radio/service/RadioService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/saicmotor/radio/service/RadioService;->mReOpenRadioTunerCount:I

    return p0
.end method

.method static synthetic access$5002(Lcom/saicmotor/radio/service/RadioService;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mReOpenRadioTunerCount:I

    return p1
.end method

.method static synthetic access$5008(Lcom/saicmotor/radio/service/RadioService;)I
    .locals 2

    .line 76
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mReOpenRadioTunerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/saicmotor/radio/service/RadioService;->mReOpenRadioTunerCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/saicmotor/radio/service/RadioService;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    return p1
.end method

.method static synthetic access$5100()I
    .locals 1

    .line 76
    sget v0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerReopenDelayTime:I

    return v0
.end method

.method static synthetic access$5102(I)I
    .locals 0

    .line 76
    sput p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerReopenDelayTime:I

    return p0
.end method

.method static synthetic access$5200(Lcom/saicmotor/radio/service/RadioService;)Ljava/lang/Runnable;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mOpenRadioTunerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/saicmotor/radio/service/RadioService;Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->setDabSessionMetadataTitle(Lcom/android/car/radio/service/RadioDabStation;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/saicmotor/radio/service/RadioService;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioDabStationList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/saicmotor/radio/service/RadioService;Landroid/hardware/radio/RadioDabInfo$EPGInfo;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->updateEPGInfo(Landroid/hardware/radio/RadioDabInfo$EPGInfo;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/saicmotor/radio/service/RadioService;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/saicmotor/radio/service/RadioService;)Landroid/hardware/radio/RadioTuner$Callback;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mInternalTunerCallback:Landroid/hardware/radio/RadioTuner$Callback;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/saicmotor/radio/service/RadioService;)Landroid/hardware/radio/DabTuner$Callback;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallback:Landroid/hardware/radio/DabTuner$Callback;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/saicmotor/radio/service/RadioService;)Ljava/lang/Boolean;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mIsPlaying:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/saicmotor/radio/service/RadioService;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerScanFinished(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/saicmotor/radio/service/RadioService;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->handleAccOffStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/saicmotor/radio/service/RadioService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerSearchFinished()V

    return-void
.end method

.method static synthetic access$800(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    return p0
.end method

.method static synthetic access$900(Lcom/saicmotor/radio/service/RadioService;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    return p0
.end method

.method private addOrReplaceInScannedStations(Lcom/android/car/radio/service/RadioStation;)V
    .locals 4

    .line 1987
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1989
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing pre-scanned station: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1994
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStations:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private addOrReplaceInScannedStations(Ljava/util/List;Lcom/android/car/radio/service/RadioStation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;",
            "Lcom/android/car/radio/service/RadioStation;",
            ")V"
        }
    .end annotation

    .line 2000
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2002
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing pre-scanned station: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2005
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2007
    :cond_0
    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private audioFocusGain(I)V
    .locals 6

    const/4 v0, 0x0

    .line 762
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->isCPMediaRequestAudioFocus:Z

    .line 763
    iget-boolean v1, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 764
    iput-boolean v3, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    .line 765
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "band = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_2

    .line 769
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeDabTunerChannel()V

    goto :goto_1

    .line 767
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeTunerChannel()V

    .line 772
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 773
    :try_start_0
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-ge v0, p1, :cond_3

    .line 776
    :try_start_1
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/car/radio/service/IRadioMBSCallback;

    invoke-interface {v2}, Lcom/android/car/radio/service/IRadioMBSCallback;->activeMediaSession()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 778
    :try_start_2
    sget-object v3, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 781
    :cond_3
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 782
    monitor-exit v1

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 784
    :cond_4
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHasAudioFocusTransient = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "    mStoppedByUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 785
    iget-boolean v1, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    if-nez v1, :cond_a

    .line 786
    iput-boolean v3, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    .line 787
    iget-boolean v1, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_4

    :cond_5
    if-ne p1, v2, :cond_8

    .line 791
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeDabTunerChannel()V

    goto :goto_5

    .line 789
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeTunerChannel()V

    goto :goto_5

    .line 794
    :cond_7
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz p1, :cond_8

    .line 795
    invoke-virtual {p1, v3}, Lcom/saicmotor/radio/manager/RadioStationManager;->mute(Z)Z

    .line 798
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 799
    :try_start_3
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    if-ge v0, v1, :cond_9

    .line 802
    :try_start_4
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/car/radio/service/IRadioMBSCallback;

    invoke-interface {v2}, Lcom/android/car/radio/service/IRadioMBSCallback;->activeMediaSession()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catch_1
    move-exception v2

    .line 804
    :try_start_5
    sget-object v3, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 807
    :cond_9
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 808
    monitor-exit p1

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_a
    :goto_8
    return-void
.end method

.method private checkAvailableChannel(II)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MAX:I

    if-gt p2, p1, :cond_2

    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    if-lt p2, p1, :cond_2

    goto :goto_1

    .line 917
    :cond_1
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MAX:I

    if-gt p2, p1, :cond_2

    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    if-lt p2, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private createCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;
    .locals 5

    .line 645
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    .line 649
    :cond_0
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    iget v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    invoke-direct {p0, v0, v1}, Lcom/saicmotor/radio/service/RadioService;->checkAvailableChannel(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_1

    .line 651
    iget v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioChannel(I)I

    move-result v0

    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    :cond_1
    const/4 v0, 0x0

    .line 654
    iget v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 655
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    iget v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->getFMRadioStationForChannel(I)Lcom/android/car/radio/service/RadioStation;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 658
    new-instance v0, Lcom/android/car/radio/service/RadioStation;

    iget v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    :cond_3
    return-object v0
.end method

.method private fmScanCallbackFinish()V
    .locals 3

    .line 940
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fmScanCallbackFinish mScannedStationsFm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsFm:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsFm:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/saicmotor/radio/model/RadioStorage;->storePreScannedStations(ILjava/util/List;)V

    .line 942
    iput-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->isNewCallback:Z

    return-void
.end method

.method private handleAccOffStatus(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 369
    iget-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mAccOffStatus:Z

    if-eqz v0, :cond_0

    .line 370
    iget-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    .line 375
    :cond_0
    iput-boolean p1, p0, Lcom/saicmotor/radio/service/RadioService;->mAccOffStatus:Z

    return-void
.end method

.method private handleLossAudioWhenSeeking()V
    .locals 5

    .line 883
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "handleLossAudioWhenSeeking"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getSearchStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerSearchFinished()V

    .line 886
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurSeekStation:Lcom/android/car/radio/service/RadioStation;

    if-eqz v0, :cond_3

    .line 887
    invoke-virtual {v0}, Lcom/android/car/radio/service/RadioStation;->getChannelNumber()I

    move-result v0

    .line 888
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v1, :cond_0

    .line 889
    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {v1, v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioChannel(II)V

    .line 891
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/saicmotor/radio/manager/RadioStationManager;->tune(III)I

    move-result v0

    if-nez v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 897
    :try_start_1
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/car/radio/service/IRadioCallback;

    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mCurSeekStation:Lcom/android/car/radio/service/RadioStation;

    invoke-interface {v2, v4}, Lcom/android/car/radio/service/IRadioCallback;->onRadioStationChanged(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 899
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 903
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 905
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurSeekStation:Lcom/android/car/radio/service/RadioStation;

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->setSessionMetadataTitle(Lcom/android/car/radio/service/RadioStation;)V

    :cond_3
    return-void
.end method

.method private initManager()V
    .locals 2

    .line 289
    invoke-static {}, Lcom/saicmotor/radio/manager/TADialogManager;->getInstance()Lcom/saicmotor/radio/manager/TADialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/manager/TADialogManager;->init(Landroid/content/Context;)V

    .line 290
    invoke-static {}, Lcom/saicmotor/radio/manager/RadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    .line 291
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mInternalTunerCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p0, v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->initialize(Landroid/content/Context;Landroid/hardware/radio/RadioTuner$Callback;)V

    .line 292
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    new-instance v1, Lcom/saicmotor/radio/service/RadioService$3;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/RadioService$3;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRadioStationManagerListener(Lcom/saicmotor/radio/manager/RadioStationManager$RadioStationManagerListener;)V

    .line 339
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabRadioStationManager:Lcom/saicmotor/radio/manager/DabRadioStationManager;

    .line 340
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallback:Landroid/hardware/radio/DabTuner$Callback;

    invoke-virtual {v0, p0, v1}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->initDab(Landroid/content/Context;Landroid/hardware/radio/DabTuner$Callback;)V

    .line 342
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ProgramAlarm;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/ProgramAlarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/ProgramAlarm;->initProgramAlarmDialog()V

    .line 343
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ProgramAlarm;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/ProgramAlarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/ProgramAlarm;->resetDabAlarm()V

    return-void
.end method

.method private notifyRadioChanged(Lcom/android/car/radio/service/RadioStation;)V
    .locals 5

    .line 2395
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2396
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2399
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioCallback;

    invoke-interface {v3, p1}, Lcom/android/car/radio/service/IRadioCallback;->onRadioStationChanged(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2401
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2404
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2405
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private notifyRadioMuteStateChanged()V
    .locals 5

    .line 2409
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyRadioMuteStateChanged"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2410
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2411
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2415
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioCallback;

    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v4}, Lcom/saicmotor/radio/manager/RadioStationManager;->isMuted()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/car/radio/service/IRadioCallback;->onUpdateRadioMuteState(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2417
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2420
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2421
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private notifyTunerScanFinished()V
    .locals 7

    .line 347
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyTunerScanFinished "

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getScanStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 353
    :try_start_1
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioCallback;

    iget v5, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/car/radio/service/IRadioCallback;->onScanFinished(ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 355
    :try_start_2
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 359
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/manager/RadioStationManager;->setScanStatus(Z)V

    .line 361
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 359
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private notifyTunerScanFinished(I)V
    .locals 6

    .line 1011
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyTunerScanFinished()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getScanStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1014
    :try_start_0
    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    .line 1015
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 1018
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioCallback;

    iget v4, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    iget-object v5, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStations:Ljava/util/List;

    invoke-interface {v3, v4, v5}, Lcom/android/car/radio/service/IRadioCallback;->onScanFinished(ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1020
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1023
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1024
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1025
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {p1, v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->setScanStatus(Z)V

    .line 1026
    new-instance p1, Lcom/android/car/radio/service/RadioStation;

    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 1027
    invoke-virtual {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->tuneRadioTune(Lcom/android/car/radio/service/RadioStation;)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->setSessionMetadataTitle(Lcom/android/car/radio/service/RadioStation;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1024
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private notifyTunerScanStarted()V
    .locals 6

    .line 983
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyTunerScanStarted()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    .line 984
    invoke-direct {p0, v0, v1, v2}, Lcom/saicmotor/radio/service/RadioService;->sendMessage(ILjava/lang/Object;I)V

    .line 985
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 987
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsAm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 990
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mScannedStationsFm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 993
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 994
    :try_start_0
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 997
    :try_start_1
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioCallback;

    iget v5, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-interface {v4, v5}, Lcom/android/car/radio/service/IRadioCallback;->onScanStarted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 999
    :try_start_2
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1002
    :cond_2
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1003
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1004
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_3

    .line 1005
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->setScanStatus(Z)V

    .line 1007
    :cond_3
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePlaying()V

    return-void

    :catchall_0
    move-exception v1

    .line 1003
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private notifyTunerSearchDialogHide()V
    .locals 5

    .line 955
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyTunerSearchDialogHide()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getSearchStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 961
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioCallback;

    iget v4, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-interface {v3, v4}, Lcom/android/car/radio/service/IRadioCallback;->onSearchFinished(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 963
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 967
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private notifyTunerSearchFinished()V
    .locals 2

    .line 972
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyTunerSearchFinished()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 975
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->setSearchStatus(Z)V

    .line 976
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private notifyTunerSearchStarted()V
    .locals 3

    .line 946
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyTunerSearchStarted()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 949
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->setSearchStatus(Z)V

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    .line 951
    invoke-direct {p0, v0, v1, v2}, Lcom/saicmotor/radio/service/RadioService;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method private openRadioBandInternal(I)I
    .locals 3

    .line 523
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openRadioBandInternal() radioBand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 524
    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    .line 525
    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBandForEol:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 531
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {p1}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result p1

    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    .line 533
    iput p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBandForEol:I

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz p1, :cond_1

    .line 537
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mInternalTunerCallback:Landroid/hardware/radio/RadioTuner$Callback;

    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallback:Landroid/hardware/radio/DabTuner$Callback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/saicmotor/radio/manager/RadioStationManager;->openRadioBand(ILandroid/hardware/radio/RadioTuner$Callback;Landroid/hardware/radio/DabTuner$Callback;)I

    move-result p1

    return p1

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method private openTunerFmAm()Z
    .locals 4

    .line 544
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_2

    .line 549
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->openRadioBandInternal(I)I

    move-result v0

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method private requestAudioFocus()I
    .locals 7

    .line 665
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "requestAudioFocus()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 667
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "requestAudioFocus() try to get audioManager."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getLastSource()I

    move-result v0

    .line 671
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->abandonAudioFocus()V

    .line 677
    :cond_2
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    .line 682
    :goto_0
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentRadioBand = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   carSourceType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 683
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_car_source_type"

    .line 684
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 688
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 689
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 692
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 693
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 694
    invoke-virtual {v0, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mAudioRequest:Landroid/media/AudioFocusRequest;

    const/4 v1, 0x0

    .line 699
    :try_start_0
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_5

    .line 700
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 703
    sget-object v2, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAudioFocus() failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    .line 706
    :goto_1
    sget-object v2, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAudioFocus status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-ne v0, v3, :cond_b

    .line 709
    iput-boolean v3, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    .line 710
    iput-boolean v3, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    .line 712
    iget-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource:Z

    if-eqz v2, :cond_6

    .line 713
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v2, :cond_7

    .line 714
    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRadioTunerMute(Z)V

    goto :goto_2

    .line 717
    :cond_6
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v2, :cond_7

    .line 718
    invoke-virtual {v2, v1}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRadioTunerMute(Z)V

    .line 721
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyRadioMuteStateChanged()V

    .line 723
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v2, :cond_9

    .line 724
    invoke-virtual {v2}, Lcom/saicmotor/radio/manager/RadioStationManager;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 725
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePaused()V

    goto :goto_3

    .line 727
    :cond_8
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePlaying()V

    .line 731
    :cond_9
    :goto_3
    new-instance v2, Lcom/saicmotor/common/CommandParcelable;

    invoke-direct {v2}, Lcom/saicmotor/common/CommandParcelable;-><init>()V

    const/16 v3, 0x4007

    .line 732
    invoke-virtual {v2, v3}, Lcom/saicmotor/common/CommandParcelable;->setEvent(I)V

    .line 733
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/common/CommandParcelable;->setTargetPackage(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/common/CommandParcelable;->sendCommand(Landroid/content/Context;)V

    .line 737
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 738
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_a

    .line 741
    :try_start_2
    iget-object v5, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/android/car/radio/service/IRadioCallback;

    invoke-interface {v5, v1}, Lcom/android/car/radio/service/IRadioCallback;->onRadioMuteChanged(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v5

    .line 743
    :try_start_3
    sget-object v6, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 746
    :cond_a
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 747
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_b
    :goto_6
    return v0
.end method

.method private resumeDabOnlySource()V
    .locals 4

    .line 575
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "resumeOnlySource: "

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v1

    if-eqz v1, :cond_no_autostart

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioWasPlaying()Z

    move-result v0

    if-eqz v0, :cond_no_autostart

    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeDabTunerChannel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource:Z

    return-void

    :cond_no_autostart
    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource:Z

    .line 577
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    .line 578
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    if-nez v1, :cond_0

    .line 579
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v2, "mBinder == null"

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 580
    new-instance v1, Lcom/saicmotor/radio/service/RadioManagerBinder;

    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mListener:Lcom/saicmotor/radio/listener/RadioBinderListener;

    invoke-direct {v1, v2}, Lcom/saicmotor/radio/service/RadioManagerBinder;-><init>(Lcom/saicmotor/radio/listener/RadioBinderListener;)V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    .line 583
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/service/RadioManagerBinder;->mute(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 585
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeOnlySource -> mute(); Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 587
    :goto_0
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePaused()V

    .line 588
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    .line 589
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDabOnlySource radioDabStation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->setDabSessionMetadataTitle(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 591
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->updateDabServiceLogoToLauncher()V

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource:Z

    return-void
.end method

.method private resumeDabTunerChannel()V
    .locals 4

    .line 613
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "resumeDabTunerChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    if-nez v0, :cond_0

    .line 615
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "mBinder == null"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 617
    new-instance v0, Lcom/saicmotor/radio/service/RadioManagerBinder;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mListener:Lcom/saicmotor/radio/listener/RadioBinderListener;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/service/RadioManagerBinder;-><init>(Lcom/saicmotor/radio/listener/RadioBinderListener;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    .line 620
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDabTunerChannel radioDabStation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->tuneRadioDab(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 622
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePlaying()V

    return-void
.end method

.method private resumeOnlySource()V
    .locals 4

    .line 556
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "resumeOnlySource: "

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v1

    if-eqz v1, :cond_no_autostart

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioWasPlaying()Z

    move-result v0

    if-eqz v0, :cond_no_autostart

    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeTunerChannel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource:Z

    return-void

    :cond_no_autostart
    const/4 v0, 0x1

    .line 557
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource:Z

    .line 558
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    .line 559
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    if-nez v1, :cond_0

    .line 560
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v2, "mBinder == null"

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 561
    new-instance v1, Lcom/saicmotor/radio/service/RadioManagerBinder;

    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mListener:Lcom/saicmotor/radio/listener/RadioBinderListener;

    invoke-direct {v1, v2}, Lcom/saicmotor/radio/service/RadioManagerBinder;-><init>(Lcom/saicmotor/radio/listener/RadioBinderListener;)V

    iput-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    .line 564
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/service/RadioManagerBinder;->mute(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 566
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeOnlySource -> mute(); Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 568
    :goto_0
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePaused()V

    .line 569
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->createCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;

    move-result-object v0

    .line 570
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeOnlySource radioStation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->setSessionMetadataTitle(Lcom/android/car/radio/service/RadioStation;)V

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource:Z

    return-void
.end method

.method private resumeTunerChannel()V
    .locals 4

    .line 596
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "resumeTunerChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    if-nez v0, :cond_0

    .line 598
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "mBinder == null"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 600
    new-instance v0, Lcom/saicmotor/radio/service/RadioManagerBinder;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mListener:Lcom/saicmotor/radio/listener/RadioBinderListener;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/service/RadioManagerBinder;-><init>(Lcom/saicmotor/radio/listener/RadioBinderListener;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->createCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;

    move-result-object v0

    .line 603
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeTunerChannel radioStation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/service/RadioManagerBinder;->tune(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 607
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeTunerChannel -> tune(); Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 609
    :goto_0
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePlaying()V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 1

    .line 2425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2426
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2427
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2428
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    int-to-long p2, p3

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    .line 2429
    sget-object p2, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessage isOK : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method private setDabSessionMetadataTitle(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 5

    .line 3019
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionMetadataTitle()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3022
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setSessionMetadataTitle(), station == null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 3026
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3027
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setSessionMetadataTitle(), mRadioTuner and mDrmTuner == null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 3034
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioDabStation;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 3035
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDabSessionMetadataTitle::radioTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 3037
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 3038
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3041
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioMBSCallback;

    invoke-interface {v3, p1}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabTitle(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 3043
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3046
    :cond_2
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3047
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private setSessionMetadataTitle(Lcom/android/car/radio/service/RadioStation;)V
    .locals 6

    .line 2964
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionMetadataTitle()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2968
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setSessionMetadataTitle(), station == null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 2972
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2973
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setSessionMetadataTitle(), mRadioTuner == null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 2977
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRadioBand()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, "FM"

    goto :goto_0

    :cond_3
    const-string v0, "AM"

    .line 2992
    :goto_0
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRadioBand()I

    move-result v1

    .line 2993
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getChannelNumber()I

    move-result v2

    .line 2992
    invoke-static {v1, v2}, Lcom/saicmotor/radio/utils/RadioChannelFormatter;->formatRadioChannel(II)Ljava/lang/String;

    move-result-object v1

    .line 2994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 2996
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2998
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioRds;->getProgramService()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2999
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioRds;->getProgramService()Ljava/lang/String;

    move-result-object v1

    .line 3003
    :cond_4
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSessionMetadataTitle::radioTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 3005
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 3006
    :try_start_0
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 3009
    :try_start_1
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioMBSCallback;

    invoke-interface {v4, v0, v1}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataTitle(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 3011
    :try_start_2
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3014
    :cond_5
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3015
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private setSessionPlaybackStatePaused()V
    .locals 6

    .line 2904
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionPlaybackStatePaused()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2906
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2907
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 2910
    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mIsPlaying:Ljava/lang/Boolean;

    .line 2911
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioMBSCallback;

    invoke-interface {v4}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionPlaybackStatePaused()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2913
    :try_start_2
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2916
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2917
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2918
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 2919
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2920
    :try_start_3
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-ge v2, v0, :cond_1

    .line 2923
    :try_start_4
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IDabCallback;

    invoke-interface {v4, v3}, Lcom/android/car/radio/service/IDabCallback;->notifyDabMuteChanged(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v4

    .line 2925
    :try_start_5
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2928
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2929
    monitor-exit v1

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_2
    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2934
    :cond_3
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2935
    :try_start_6
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-ge v2, v0, :cond_4

    .line 2939
    :try_start_7
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioCallback;

    invoke-interface {v4, v3}, Lcom/android/car/radio/service/IRadioCallback;->onUpdateRadioMuteState(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v4

    .line 2941
    :try_start_8
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2944
    :cond_4
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2945
    monitor-exit v1

    :cond_5
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 2917
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method private setSessionPlaybackStatePlaying()V
    .locals 6

    .line 2840
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionPlaybackStatePlaying()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2841
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-nez v0, :cond_0

    return-void

    .line 2844
    :cond_0
    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2845
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionPlaybackStatePlaying(), mRadioTuner == null"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 2849
    :cond_1
    iget-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 2854
    :cond_2
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2855
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    .line 2858
    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mIsPlaying:Ljava/lang/Boolean;

    .line 2859
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioMBSCallback;

    invoke-interface {v4}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionPlaybackStatePlaying()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2861
    :try_start_2
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2864
    :cond_3
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2865
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2866
    iput-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    .line 2867
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2868
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabRadioStationManager:Lcom/saicmotor/radio/manager/DabRadioStationManager;

    if-eqz v0, :cond_4

    .line 2869
    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getDabTuner()Landroid/hardware/radio/DabTuner;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 2872
    :cond_4
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2873
    :try_start_3
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 2876
    :try_start_4
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IDabCallback;

    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v4}, Lcom/saicmotor/radio/manager/RadioStationManager;->isMuted()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/car/radio/service/IDabCallback;->notifyDabMuteChanged(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    .line 2878
    :try_start_5
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2881
    :cond_5
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2882
    monitor-exit v1

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_6
    if-eq v0, v4, :cond_7

    if-nez v0, :cond_9

    .line 2885
    :cond_7
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2886
    :try_start_6
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-ge v2, v0, :cond_8

    .line 2890
    :try_start_7
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioCallback;

    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v4}, Lcom/saicmotor/radio/manager/RadioStationManager;->isMuted()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/car/radio/service/IRadioCallback;->onUpdateRadioMuteState(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v3

    .line 2892
    :try_start_8
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2895
    :cond_8
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2896
    monitor-exit v1

    :cond_9
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 2865
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 2850
    :cond_a
    :goto_7
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionPlaybackStatePlaying(), do not have audio focus."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method private setSessionPlaybackStateStop()V
    .locals 2

    .line 2952
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "setSessionPlaybackStateStop()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2954
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePaused()V

    return-void
.end method

.method private shutdownManagers()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->shutdown()V

    .line 512
    :cond_0
    invoke-static {}, Lcom/saicmotor/radio/manager/TADialogManager;->getInstance()Lcom/saicmotor/radio/manager/TADialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/TADialogManager;->shutdown()V

    return-void
.end method

.method private declared-synchronized updateDabServiceLogoToLauncher()V
    .locals 9

    monitor-enter p0

    .line 2754
    :try_start_0
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "updateDabServiceLogo logoInfoList "

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2755
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2756
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2757
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v0

    .line 2758
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v3}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentLogoByte()[B

    move-result-object v3

    .line 2759
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2760
    :try_start_1
    iget-object v5, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    if-nez v3, :cond_0

    .line 2764
    :try_start_2
    iget-object v7, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/android/car/radio/service/IRadioMBSCallback;

    iget-object v8, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v8}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2766
    :cond_0
    iget-object v7, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/android/car/radio/service/IRadioMBSCallback;

    array-length v8, v3

    invoke-static {v3, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 2769
    :try_start_3
    sget-object v8, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2772
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2773
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 2774
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 2776
    :cond_2
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v3, "updateDabServiceLogo mRadioStorage = null"

    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2778
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2779
    :try_start_6
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    if-ge v2, v3, :cond_3

    .line 2782
    :try_start_7
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/car/radio/service/IRadioMBSCallback;

    iget-object v5, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v5}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabBitmap(Lcom/android/car/radio/service/RadioDabStation;Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 2785
    :try_start_8
    sget-object v5, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2788
    :cond_3
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2789
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    .line 2791
    :cond_4
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDabSlideShowChanged mCurrentRadioBand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2794
    :goto_4
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateEPGInfo(Landroid/hardware/radio/RadioDabInfo$EPGInfo;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 2738
    :try_start_0
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "updateEPGInfo epgInfo = null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    monitor-exit p0

    return-void

    .line 2741
    :cond_0
    :try_start_1
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEPGInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioDabInfo$EPGInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2748
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_1

    .line 2749
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/saicmotor/radio/model/RadioStorage;->storeDabProgram(Landroid/hardware/radio/RadioDabInfo$EPGInfo;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2751
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$RadioService(I)V
    .locals 6

    if-nez p1, :cond_7

    .line 225
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "bind caradapter success"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAdapterClient:Lcom/saicmotor/carapi/CarAdapterClient;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/saicmotor/carapi/CarAdapterClient;->queryClient(I)Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_3

    .line 229
    new-instance v3, Lcom/saicmotor/carapi/client/CarConfigClient;

    invoke-direct {v3, p1}, Lcom/saicmotor/carapi/client/CarConfigClient;-><init>(Landroid/os/IBinder;)V

    iput-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mCarConfigClient:Lcom/saicmotor/carapi/client/CarConfigClient;

    .line 230
    invoke-virtual {v3}, Lcom/saicmotor/carapi/client/CarConfigClient;->getCarModelConfigData()I

    move-result p1

    sput p1, Lcom/saicmotor/radio/app/RadioApp;->mCarConfig:I

    .line 231
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarConfigClient:Lcom/saicmotor/carapi/client/CarConfigClient;

    invoke-virtual {p1}, Lcom/saicmotor/carapi/client/CarConfigClient;->getDabConfig()I

    move-result p1

    sput p1, Lcom/saicmotor/radio/app/RadioApp;->mDabConfig:I

    .line 232
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarConfigClient:Lcom/saicmotor/carapi/client/CarConfigClient;

    invoke-virtual {p1}, Lcom/saicmotor/carapi/client/CarConfigClient;->getCarRegionConfig()I

    move-result p1

    .line 233
    sget-object v3, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCarConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/saicmotor/radio/app/RadioApp;->mCarConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 234
    sget-object v3, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDabConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/saicmotor/radio/app/RadioApp;->mDabConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 235
    sget-object v3, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carRegionConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-ne p1, v1, :cond_0

    .line 237
    sput v1, Lcom/saicmotor/radio/constant/RadioConstant;->area:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 239
    sput v0, Lcom/saicmotor/radio/constant/RadioConstant;->area:I

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 241
    sput v2, Lcom/saicmotor/radio/constant/RadioConstant;->area:I

    goto :goto_0

    .line 243
    :cond_2
    sput v2, Lcom/saicmotor/radio/constant/RadioConstant;->area:I

    .line 247
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAdapterClient:Lcom/saicmotor/carapi/CarAdapterClient;

    invoke-virtual {p1, v2}, Lcom/saicmotor/carapi/CarAdapterClient;->queryClient(I)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 249
    new-instance v0, Lcom/saicmotor/carapi/client/CarEvsClient;

    invoke-direct {v0, p1}, Lcom/saicmotor/carapi/client/CarEvsClient;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarEvsClient:Lcom/saicmotor/carapi/client/CarEvsClient;

    .line 250
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mICarEvsCallback:Lcom/saicmotor/carapi/evs/ICarEvsCallback;

    invoke-virtual {v0, p1}, Lcom/saicmotor/carapi/client/CarEvsClient;->registListener(Lcom/saicmotor/carapi/evs/ICarEvsCallback;)V

    .line 253
    :cond_4
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAdapterClient:Lcom/saicmotor/carapi/CarAdapterClient;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/saicmotor/carapi/CarAdapterClient;->queryClient(I)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 255
    new-instance v0, Lcom/saicmotor/carapi/client/FeatureClient;

    invoke-direct {v0, p1}, Lcom/saicmotor/carapi/client/FeatureClient;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mFeatureClient:Lcom/saicmotor/carapi/client/FeatureClient;

    .line 258
    :cond_5
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAdapterClient:Lcom/saicmotor/carapi/CarAdapterClient;

    invoke-virtual {p1, v1}, Lcom/saicmotor/carapi/CarAdapterClient;->queryClient(I)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 260
    new-instance v0, Lcom/saicmotor/carapi/client/CarGeneralClient;

    invoke-direct {v0, p1}, Lcom/saicmotor/carapi/client/CarGeneralClient;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarGeneralClient:Lcom/saicmotor/carapi/client/CarGeneralClient;

    .line 261
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCallback:Lcom/saicmotor/carapi/general/ICarGeneralCallback;

    invoke-virtual {v0, p1}, Lcom/saicmotor/carapi/client/CarGeneralClient;->registListener(Lcom/saicmotor/carapi/general/ICarGeneralCallback;)V

    .line 263
    :cond_6
    invoke-static {}, Lcom/saicmotor/radio/manager/FeatureManager;->getInstance()Lcom/saicmotor/radio/manager/FeatureManager;

    move-result-object p1

    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mFeatureClient:Lcom/saicmotor/carapi/client/FeatureClient;

    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarConfigClient:Lcom/saicmotor/carapi/client/CarConfigClient;

    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCarGeneralClient:Lcom/saicmotor/carapi/client/CarGeneralClient;

    invoke-virtual {p1, v0, v1, v2}, Lcom/saicmotor/radio/manager/FeatureManager;->handleFeature(Lcom/saicmotor/carapi/client/FeatureClient;Lcom/saicmotor/carapi/client/CarConfigClient;Lcom/saicmotor/carapi/client/CarGeneralClient;)V

    :cond_7
    return-void
.end method

.method public synthetic lambda$onStartCommand$1$RadioService()V
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeOnlySource()V

    return-void
.end method

.method public synthetic lambda$onStartCommand$2$RadioService()V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->resumeDabOnlySource()V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 5

    .line 815
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    .line 866
    :cond_1
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onAudioFocusChange(): AUDIOFOCUS_LOSS in other Bands."

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 867
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->abandonAudioFocus()V

    goto/16 :goto_1

    :cond_2
    :goto_0
    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_1

    .line 822
    :cond_3
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHasAudioFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mStoppedByUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->mStoppedByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 823
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->audioFocusGain(I)V

    goto :goto_1

    .line 842
    :cond_4
    iput-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    .line 844
    iput-boolean v4, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocus:Z

    .line 845
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz p1, :cond_5

    .line 846
    invoke-virtual {p1}, Lcom/saicmotor/radio/manager/RadioStationManager;->closeRadio()V

    .line 847
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->handleLossAudioWhenSeeking()V

    .line 849
    :cond_5
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStateStop()V

    .line 850
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->abandonAudioFocus()V

    .line 851
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getLastSource()I

    move-result p1

    .line 852
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastSource = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/16 v0, 0x32

    if-ne p1, v0, :cond_6

    .line 854
    iput-boolean v2, p0, Lcom/saicmotor/radio/service/RadioService;->isCPMediaRequestAudioFocus:Z

    goto :goto_1

    .line 856
    :cond_6
    iput-boolean v4, p0, Lcom/saicmotor/radio/service/RadioService;->isCPMediaRequestAudioFocus:Z

    goto :goto_1

    .line 833
    :cond_7
    iput-boolean v4, p0, Lcom/saicmotor/radio/service/RadioService;->mHasAudioFocusTransient:Z

    .line 834
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz p1, :cond_8

    .line 835
    invoke-virtual {p1}, Lcom/saicmotor/radio/manager/RadioStationManager;->closeRadio()V

    .line 836
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->handleLossAudioWhenSeeking()V

    .line 838
    :cond_8
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStateStop()V

    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 192
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind(); Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    if-nez p1, :cond_0

    .line 194
    new-instance p1, Lcom/saicmotor/radio/service/RadioManagerBinder;

    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mListener:Lcom/saicmotor/radio/listener/RadioBinderListener;

    invoke-direct {p1, v0}, Lcom/saicmotor/radio/service/RadioManagerBinder;-><init>(Lcom/saicmotor/radio/listener/RadioBinderListener;)V

    iput-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mBinder:Lcom/saicmotor/radio/service/RadioManagerBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 201
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 202
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "RadioService onCreate()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 203
    iput-object p0, p0, Lcom/saicmotor/radio/service/RadioService;->mContext:Landroid/content/Context;

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/saicmotor/radio/service/RadioMBService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    invoke-static {}, Lcom/saicmotor/radio/widget/RadioWidgetManager;->getInstance()Lcom/saicmotor/radio/widget/RadioWidgetManager;

    move-result-object v0

    invoke-static {}, Lcom/saicmotor/radio/app/RadioApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/widget/RadioWidgetManager;->init(Landroid/content/Context;)V

    .line 207
    new-instance v0, Lcom/saicmotor/radio/receiver/ProgramReceiver;

    invoke-direct {v0}, Lcom/saicmotor/radio/receiver/ProgramReceiver;-><init>()V

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->programReceiver:Lcom/saicmotor/radio/receiver/ProgramReceiver;

    .line 208
    invoke-virtual {v0}, Lcom/saicmotor/radio/receiver/ProgramReceiver;->register()V

    .line 210
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    .line 211
    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/model/RadioStorage;->addPreScannedChannelChangeListener(Lcom/saicmotor/radio/model/RadioStorage$PreScannedChannelChangeListener;)V

    .line 212
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->clearDabProgram()V

    .line 213
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    .line 214
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    new-instance v1, Lcom/saicmotor/radio/service/RadioService$2;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/RadioService$2;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/model/RadioStorage;->addDabLogoListLoadedListener(Lcom/saicmotor/radio/model/RadioStorage$DabLogoListLoadedListener;)V

    .line 222
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/saicmotor/carapi/CarAdapterClient;->getInstance(Landroid/content/Context;)Lcom/saicmotor/carapi/CarAdapterClient;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAdapterClient:Lcom/saicmotor/carapi/CarAdapterClient;

    .line 223
    new-instance v1, Lcom/saicmotor/radio/service/-$$Lambda$RadioService$89Mq4Wkd_-bWqiYRP5Diit5Wjd0;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/-$$Lambda$RadioService$89Mq4Wkd_-bWqiYRP5Diit5Wjd0;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-virtual {v0, v1}, Lcom/saicmotor/carapi/CarAdapterClient;->setConnListener(Lcom/saicmotor/carapi/CarAdapterClient$ServiceConnListener;)V

    .line 266
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->initManager()V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioSuccessfullyInitialized:Z

    const-string v0, "audio"

    .line 268
    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAudioManager:Landroid/media/AudioManager;

    .line 270
    invoke-virtual {p0}, Lcom/saicmotor/radio/service/RadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SKIN_THEME_CONFIG"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/saicmotor/radio/utils/SkinUtil;->loadSkin(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 488
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onDestroy()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarGeneralClient:Lcom/saicmotor/carapi/client/CarGeneralClient;

    if-eqz v0, :cond_0

    .line 490
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCallback:Lcom/saicmotor/carapi/general/ICarGeneralCallback;

    invoke-virtual {v0, v1}, Lcom/saicmotor/carapi/client/CarGeneralClient;->unregistListener(Lcom/saicmotor/carapi/general/ICarGeneralCallback;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarEvsClient:Lcom/saicmotor/carapi/client/CarEvsClient;

    if-eqz v0, :cond_1

    .line 493
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mICarEvsCallback:Lcom/saicmotor/carapi/evs/ICarEvsCallback;

    invoke-virtual {v0, v1}, Lcom/saicmotor/carapi/client/CarEvsClient;->unregistListener(Lcom/saicmotor/carapi/evs/ICarEvsCallback;)V

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCarAdapterClient:Lcom/saicmotor/carapi/CarAdapterClient;

    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {v0}, Lcom/saicmotor/carapi/CarAdapterClient;->stop()Z

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->programReceiver:Lcom/saicmotor/radio/receiver/ProgramReceiver;

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {v0}, Lcom/saicmotor/radio/receiver/ProgramReceiver;->unregister()V

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_4

    .line 502
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->removeDabLogeListLoadedListener()V

    .line 504
    :cond_4
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->shutdownManagers()V

    .line 505
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onPreScannedChannelChange(I)V
    .locals 5

    .line 2014
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreScannedChannelChange radioBand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2016
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p1}, Lcom/saicmotor/radio/model/RadioStorage;->updateFavoriteStationNameForFM()V

    .line 2017
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->createCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;

    move-result-object p1

    .line 2018
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreScannedChannelChange station = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2020
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2023
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioCallback;

    invoke-interface {v3, p1}, Lcom/android/car/radio/service/IRadioCallback;->onRadioStationChanged(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2025
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2028
    :cond_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2029
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->setSessionMetadataTitle(Lcom/android/car/radio/service/RadioStation;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2029
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 380
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onStartCommand()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    const-string v0, "command"

    .line 382
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/common/CommandParcelable;

    if-eqz v0, :cond_b

    .line 384
    invoke-virtual {v0}, Lcom/saicmotor/common/CommandParcelable;->getEvent()I

    move-result v1

    .line 385
    invoke-virtual {v0}, Lcom/saicmotor/common/CommandParcelable;->getTargetType()I

    move-result v2

    .line 386
    sget-object v3, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand  event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const v2, 0x8001

    const/4 v3, 0x0

    const v4, 0x8006

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x8005

    if-eq v1, v2, :cond_3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x4014

    if-ne v1, v2, :cond_d

    .line 461
    invoke-virtual {v0}, Lcom/saicmotor/common/CommandParcelable;->getTargetState()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 463
    iput-boolean v5, p0, Lcom/saicmotor/radio/service/RadioService;->mCarplayAAPScreenShowingStatus:Z

    .line 464
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getSearchStatus()Z

    move-result v0

    goto/16 :goto_4

    :cond_1
    if-nez v0, :cond_2

    .line 468
    iput-boolean v3, p0, Lcom/saicmotor/radio/service/RadioService;->mCarplayAAPScreenShowingStatus:Z

    .line 469
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getSearchStatus()Z

    move-result v0

    goto/16 :goto_4

    .line 473
    :cond_2
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onStartCommand() -> TargetState Error."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 395
    :cond_3
    :goto_0
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand1  mCurrentRadioBand = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   mRadioStorage = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_5

    .line 399
    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getStoredRadioBand()I

    move-result v0

    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    .line 400
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioBand(I)V

    .line 401
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 405
    :try_start_1
    iget-object v6, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/android/car/radio/service/IRadioCallback;

    iget v7, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-interface {v6, v7}, Lcom/android/car/radio/service/IRadioCallback;->onRadioBandChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 407
    :try_start_2
    sget-object v7, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 410
    :cond_4
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 411
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 413
    :cond_5
    :goto_3
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand2  mCurrentRadioBand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 414
    iget v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const-wide/16 v2, 0x12c

    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_8

    const/4 v5, 0x4

    if-eq v0, v5, :cond_6

    .line 456
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onStartCommand() -> mCurrentRadioBand Error."

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-ne v1, v4, :cond_7

    .line 439
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/service/-$$Lambda$RadioService$P8zvJRPWo-ASXJfcKMAhZnqngpM;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/-$$Lambda$RadioService$P8zvJRPWo-ASXJfcKMAhZnqngpM;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 441
    :cond_7
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/service/RadioService$5;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/RadioService$5;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 417
    :cond_8
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_9

    .line 418
    iget v5, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    iget-object v6, p0, Lcom/saicmotor/radio/service/RadioService;->mInternalTunerCallback:Landroid/hardware/radio/RadioTuner$Callback;

    iget-object v7, p0, Lcom/saicmotor/radio/service/RadioService;->mDabTunerCallback:Landroid/hardware/radio/DabTuner$Callback;

    invoke-virtual {v0, v5, v6, v7}, Lcom/saicmotor/radio/manager/RadioStationManager;->openRadioBand(ILandroid/hardware/radio/RadioTuner$Callback;Landroid/hardware/radio/DabTuner$Callback;)I

    :cond_9
    if-ne v1, v4, :cond_a

    .line 420
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/service/-$$Lambda$RadioService$0FVd5OuRT4loEaxNjf-32Yo7SZo;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/-$$Lambda$RadioService$0FVd5OuRT4loEaxNjf-32Yo7SZo;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 422
    :cond_a
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/service/RadioService$4;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/service/RadioService$4;-><init>(Lcom/saicmotor/radio/service/RadioService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 477
    :cond_b
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "command = null"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_4

    .line 480
    :cond_c
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "intent = null"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 483
    :cond_d
    :goto_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public tuneRadioDab(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 7

    .line 1033
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1034
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "requestAudioFocus failed, return"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 1037
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mDabRadioStationManager:Lcom/saicmotor/radio/manager/DabRadioStationManager;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v0, :cond_2

    .line 1058
    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/model/RadioStorage;->storeCurrentDabStation(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 1060
    :cond_2
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mDabRadioStationManager:Lcom/saicmotor/radio/manager/DabRadioStationManager;

    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioDabStation;->getFrequencyIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioDabStation;->getServiceId()J

    move-result-wide v3

    .line 1061
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioDabStation;->getEnsembleId()I

    move-result v5

    const/4 v6, 0x0

    .line 1060
    invoke-virtual/range {v1 .. v6}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->dabTune(IJII)V

    .line 1062
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePlaying()V

    .line 1063
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/service/RadioService;->setDabSessionMetadataTitle(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 1064
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->updateDabServiceLogoToLauncher()V

    return-void

    .line 1038
    :cond_3
    :goto_0
    sget-object v0, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "tune radio dab radioDabStation == null"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 1043
    :try_start_1
    iget-object v3, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/car/radio/service/IRadioMBSCallback;

    invoke-interface {v3, p1}, Lcom/android/car/radio/service/IRadioMBSCallback;->setSessionMetadataDabTitle(Lcom/android/car/radio/service/RadioDabStation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1045
    :try_start_2
    sget-object v4, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1048
    :cond_4
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioMBSCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1049
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz p1, :cond_5

    .line 1051
    invoke-virtual {p1}, Lcom/saicmotor/radio/model/RadioStorage;->getCurrentDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1052
    iget-object p1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    invoke-virtual {p1}, Lcom/saicmotor/radio/model/RadioStorage;->removeCurDabStation()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 1049
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public tuneRadioTune(Lcom/android/car/radio/service/RadioStation;)V
    .locals 8

    if-eqz p1, :cond_b

    .line 1068
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    if-eqz v0, :cond_b

    .line 1069
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->requestAudioFocus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRadioBand()I

    move-result v0

    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    if-eq v0, v2, :cond_2

    .line 1075
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRadioBand()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->openRadioBandInternal(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    return-void

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->checkStatusSearchAndScan()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->cancel()V

    .line 1082
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerScanFinished()V

    .line 1083
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->notifyTunerSearchFinished()V

    .line 1085
    :cond_3
    iget-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->checkStatusNormal()Z

    move-result v0

    .line 1086
    sget-object v2, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStatusNormal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    .line 1088
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getChannelNumber()I

    move-result v0

    .line 1089
    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-direct {p0, v2, v0}, Lcom/saicmotor/radio/service/RadioService;->checkAvailableChannel(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1091
    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    goto :goto_0

    .line 1097
    :cond_4
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    goto :goto_0

    .line 1093
    :cond_5
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    .line 1105
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStorage:Lcom/saicmotor/radio/model/RadioStorage;

    if-eqz v1, :cond_7

    .line 1106
    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {v1, v2, v0}, Lcom/saicmotor/radio/model/RadioStorage;->storeRadioChannel(II)V

    .line 1109
    :cond_7
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioStationManager:Lcom/saicmotor/radio/manager/RadioStationManager;

    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/saicmotor/radio/manager/RadioStationManager;->tune(III)I

    move-result v1

    if-nez v1, :cond_9

    .line 1111
    sget-object v1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentRadioChannel = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   channelNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1113
    new-instance v1, Lcom/android/car/radio/service/RadioStation;

    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object v4

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 1114
    iget-object v2, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 1115
    :try_start_0
    iget-object v4, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_8

    .line 1118
    :try_start_1
    iget-object v6, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/android/car/radio/service/IRadioCallback;

    invoke-interface {v6, v1}, Lcom/android/car/radio/service/IRadioCallback;->onRadioStationChanged(Lcom/android/car/radio/service/RadioStation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 1120
    :try_start_2
    sget-object v7, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1123
    :cond_8
    iget-object v1, p0, Lcom/saicmotor/radio/service/RadioService;->mRadioTunerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1124
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1126
    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    .line 1127
    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannelForEol:I

    .line 1128
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getSubChannelNumber()I

    move-result v0

    iput v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioSubChannel:I

    .line 1129
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRds:Lcom/android/car/radio/service/RadioRds;

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 1124
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 1131
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/saicmotor/radio/service/RadioService;->setSessionPlaybackStatePlaying()V

    .line 1132
    new-instance v0, Lcom/android/car/radio/service/RadioStation;

    iget v1, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioChannel:I

    iget v2, p0, Lcom/saicmotor/radio/service/RadioService;->mCurrentRadioBand:I

    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object p1

    invoke-direct {v0, v1, v3, v2, p1}, Lcom/android/car/radio/service/RadioStation;-><init>(IIILcom/android/car/radio/service/RadioRds;)V

    .line 1133
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/service/RadioService;->setSessionMetadataTitle(Lcom/android/car/radio/service/RadioStation;)V

    :cond_a
    return-void

    .line 1070
    :cond_b
    :goto_4
    sget-object p1, Lcom/saicmotor/radio/service/RadioService;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "TuneRadioTune return"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method
