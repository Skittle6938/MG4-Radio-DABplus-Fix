.class public Lcom/saicmotor/radio/view/fragment/FmFragment;
.super Lcom/saicmotor/radio/base/BaseFragment;
.source "FmFragment.java"

# interfaces
.implements Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;
.implements Lcom/saicmotor/radio/view/adapter/FmAmFavoriteAdapter$OnFavoriteItemClickListener;
.implements Lcom/saicmotor/radio/view/adapter/FmAmPrescannedAdapter$OnPrescannedItemClickListener;
.implements Lcom/saicmotor/radio/listener/RadioStationChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/saicmotor/radio/base/BaseFragment<",
        "Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;",
        "Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;",
        ">;",
        "Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioBandView;",
        "Lcom/saicmotor/radio/view/adapter/FmAmFavoriteAdapter$OnFavoriteItemClickListener;",
        "Lcom/saicmotor/radio/view/adapter/FmAmPrescannedAdapter$OnPrescannedItemClickListener;",
        "Lcom/saicmotor/radio/listener/RadioStationChangeListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;

.field private static final MSG_FAVORITE_LIST_CHANGED:I = 0x1

.field private static final MSG_PRESCANNED_LIST_CHANGED:I = 0x2

.field private static final MSG_RADIO_STATION_CHANGED:I = 0x0

.field private static final MSG_STEP_NEXT:I = 0x6

.field private static final MSG_STEP_PREVIOUS:I = 0x5

.field private static final MSG_UPDATE_CHANNEL_NUMBER:I = 0x9

.field private static final MSG_UPDATE_PLAY_STATE:I = 0x4

.field private static final MSG_UPDATE_RADIO_NAME:I = 0x10

.field private static final MSG_UPDATE_RTTEXT_CHANGED:I = 0x7

.field private static final STEP_INTERVAL:I = 0x1f4


# instance fields
.field private FMAM:I

.field private favListBtn:Landroid/widget/Button;

.field private favoriteImageBtn:Landroid/widget/ImageButton;

.field private horizontalScrollView:Lcom/saicmotor/radio/view/widget/MyHorizontalScrollView;

.field private mBandTypeArgs:Landroid/os/Bundle;

.field private mCurrentStation:Lcom/android/car/radio/service/RadioStation;

.field private final mFavoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIbRdsSetting:Landroid/widget/ImageButton;

.field private mLlRadioBaseFunction:Landroid/widget/LinearLayout;

.field private final mPrescannedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mPressTime:J

.field private mRadioChannelName:Landroid/widget/TextView;

.field private mRadioChannelNowplayingText:Lcom/saicmotor/radio/view/widget/MarqueTextView;

.field private mRadioChannelRateText:Landroid/widget/TextView;

.field private mRadioChannelText:Landroid/widget/TextView;

.field private mRadioFinetuneDownBtn:Landroid/widget/Button;

.field private mRadioFinetuneUpBtn:Landroid/widget/Button;

.field private mRadioType:Landroid/widget/TextView;

.field private mRlRadioInfo:Landroid/widget/RelativeLayout;

.field private mScanDialog:Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;

.field private mScanHintDialog:Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;

.field private mSearchDialog:Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;

.field private mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

.field private final mUpdateSeekbar:Z

.field private maxScaleValue:I

.field private minScaleValue:I

.field private playPauseImageBtn:Landroid/widget/ImageButton;

.field private playPauseStatus:Z

.field private ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

.field private searchListBtn:Landroid/widget/Button;

.field private step:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/view/fragment/FmFragment;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/saicmotor/radio/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseStatus:Z

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    .line 82
    sget v1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    iput v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    .line 83
    sget v1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MAX:I

    iput v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    .line 84
    sget v1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_STEP:I

    iput v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mFavoriteList:Ljava/util/List;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPrescannedList:Ljava/util/List;

    .line 109
    iput-boolean v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUpdateSeekbar:Z

    .line 114
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/view/fragment/FmFragment$1;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/view/fragment/FmFragment$1;-><init>(Lcom/saicmotor/radio/view/fragment/FmFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/saicmotor/radio/view/fragment/FmFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->handleRadioStationChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/saicmotor/radio/view/fragment/FmFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->handleFavoriteListChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/view/widget/MarqueTextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelNowplayingText:Lcom/saicmotor/radio/view/widget/MarqueTextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/saicmotor/radio/view/fragment/FmFragment;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/view/widget/RuleView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/saicmotor/radio/view/fragment/FmFragment;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/saicmotor/radio/view/fragment/FmFragment;Lcom/android/car/radio/service/RadioStation;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/FmFragment;->handleRadioNameChanged(Lcom/android/car/radio/service/RadioStation;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/saicmotor/radio/view/fragment/FmFragment;Ljava/util/List;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/FmFragment;->handlePrescannedListChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanHintDialog:Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/listener/UIRequestListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/saicmotor/radio/view/fragment/FmFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseImageBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600()Lcom/saicmotor/radio/utils/log/Logger;
    .locals 1

    .line 55
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/saicmotor/radio/view/fragment/FmFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/saicmotor/radio/view/fragment/FmFragment;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    return p0
.end method

.method private handleFavoriteListChanged()V
    .locals 3

    .line 867
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFavoriteListChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mFavoriteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz v0, :cond_0

    .line 869
    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestUpdateFmAmFavoriteList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private handlePrescannedListChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;)V"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPrescannedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 913
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPrescannedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 914
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePrescannedListChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPrescannedList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 916
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz p1, :cond_0

    .line 917
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPrescannedList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestUpdateFmAmSearchList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private handleRadioNameChanged(Lcom/android/car/radio/service/RadioStation;)V
    .locals 2

    .line 278
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "handleRadioNameChanged"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioStation;->getRds()Lcom/android/car/radio/service/RadioRds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/radio/service/RadioRds;->getProgramService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelName:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 285
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleRadioStationChanged()V
    .locals 3

    .line 768
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioStationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mCurrentStation:Lcom/android/car/radio/service/RadioStation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mCurrentStation:Lcom/android/car/radio/service/RadioStation;

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestFmAmFavoriteActiveRadioStation(Lcom/android/car/radio/service/RadioStation;)V

    .line 771
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mCurrentStation:Lcom/android/car/radio/service/RadioStation;

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestFmAmSearchActiveRadioStation(Lcom/android/car/radio/service/RadioStation;)V

    :cond_0
    return-void
.end method

.method private setFavoriteOnList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;)V"
        }
    .end annotation

    .line 877
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFavoriteOnList(). # of favorite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mFavoriteList:Ljava/util/List;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 884
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 886
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 887
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setFavoriteOnList(): is not mainthread!"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 888
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 893
    :cond_1
    invoke-direct {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->handleFavoriteListChanged()V

    return-void

    .line 880
    :cond_2
    :goto_0
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setFavoriteOnList(): favorite is NULL."

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->w(Ljava/lang/String;)V

    return-void
.end method

.method private setPreScannedOnList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioStation;",
            ">;)V"
        }
    .end annotation

    .line 929
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreScannedOnList(). # of prescanned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPrescannedList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 932
    :cond_1
    :goto_0
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "setPreScannedOnList(): preScanned is NULL."

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->w(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized updateFeatureUI(Z)V
    .locals 5

    monitor-enter p0

    .line 469
    :try_start_0
    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v1, :cond_2

    .line 470
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_STEP:I

    iput v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    .line 471
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    iput v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    .line 472
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MAX:I

    iput v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    .line 473
    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_FM___"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_FM_FMSearch__"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_FM_FMBase__"

    .line 474
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRlRadioInfo:Landroid/widget/RelativeLayout;

    const-string v1, "radio_FM___"

    invoke-static {v1}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mLlRadioBaseFunction:Landroid/widget/LinearLayout;

    const-string v1, "radio_FM_FMBase__"

    invoke-static {v1}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 478
    :cond_2
    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    if-nez v0, :cond_5

    .line 479
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_STEP:I

    iput v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    .line 480
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    iput v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    .line 481
    sget v0, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MAX:I

    iput v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    .line 482
    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_AM___"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_AM_AMSearch__"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_AM_AMBase__"

    .line 483
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRlRadioInfo:Landroid/widget/RelativeLayout;

    const-string v1, "radio_AM___"

    invoke-static {v1}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mLlRadioBaseFunction:Landroid/widget/LinearLayout;

    const-string v1, "radio_AM_AMBase__"

    invoke-static {v1}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    :cond_5
    :goto_4
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMAM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " step = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   minScaleValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   maxScaleValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 491
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRefresh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 493
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    iget v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {p1, v0, v1}, Lcom/saicmotor/radio/view/widget/RuleView;->setMinMaxScaleValue(II)V

    .line 494
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/RuleView;->setRuleStep(I)V

    .line 495
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/RuleView;->setBand(I)V

    .line 496
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    invoke-virtual {p1}, Lcom/saicmotor/radio/view/widget/RuleView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/saicmotor/radio/base/BasePresenter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->createPresenter()Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;
    .locals 3

    .line 507
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "createPresenter()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mBandTypeArgs:Landroid/os/Bundle;

    .line 509
    new-instance v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mBandTypeArgs:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getAccessoryMuteStatus()Z
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->isMute()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected initView()V
    .locals 4

    .line 531
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "initView()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mIbRdsSetting:Landroid/widget/ImageButton;

    .line 536
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioFinetuneDownBtn:Landroid/widget/Button;

    .line 537
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioFinetuneUpBtn:Landroid/widget/Button;

    .line 538
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favoriteImageBtn:Landroid/widget/ImageButton;

    .line 539
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseImageBtn:Landroid/widget/ImageButton;

    .line 541
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRlRadioInfo:Landroid/widget/RelativeLayout;

    .line 542
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mLlRadioBaseFunction:Landroid/widget/LinearLayout;

    .line 544
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelText:Landroid/widget/TextView;

    .line 545
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelRateText:Landroid/widget/TextView;

    .line 546
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioType:Landroid/widget/TextView;

    .line 547
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelName:Landroid/widget/TextView;

    .line 548
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/MarqueTextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelNowplayingText:Lcom/saicmotor/radio/view/widget/MarqueTextView;

    const/4 v1, 0x0

    .line 549
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/view/widget/MarqueTextView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f080056

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favListBtn:Landroid/widget/Button;

    .line 552
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f08006e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->searchListBtn:Landroid/widget/Button;

    .line 554
    new-instance v0, Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;

    iget-object v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mSearchDialog:Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;

    .line 555
    new-instance v0, Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;

    iget-object v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanDialog:Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;

    .line 556
    new-instance v0, Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;

    iget-object v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanHintDialog:Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;

    .line 559
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f080123

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/RuleView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    .line 561
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0800b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/MyHorizontalScrollView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->horizontalScrollView:Lcom/saicmotor/radio/view/widget/MyHorizontalScrollView;

    const/4 v2, 0x2

    .line 562
    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/view/widget/MyHorizontalScrollView;->setOverScrollMode(I)V

    .line 563
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initView FMAM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   minScaleValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   maxScaleValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    iget v3, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {v0, v2, v3}, Lcom/saicmotor/radio/view/widget/RuleView;->setMinMaxScaleValue(II)V

    .line 565
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/view/widget/RuleView;->setRuleStep(I)V

    .line 566
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/view/widget/RuleView;->setBand(I)V

    .line 567
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mIbRdsSetting:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/radio/app/RadioApp;->isOuterRadio()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget-object v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->horizontalScrollView:Lcom/saicmotor/radio/view/widget/MyHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/view/widget/RuleView;->setHorizontalScrollView(Lcom/saicmotor/radio/view/widget/MyHorizontalScrollView;)V

    .line 571
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    new-instance v2, Lcom/saicmotor/radio/view/fragment/FmFragment$2;

    invoke-direct {v2, p0}, Lcom/saicmotor/radio/view/fragment/FmFragment$2;-><init>(Lcom/saicmotor/radio/view/fragment/FmFragment;)V

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/view/widget/RuleView;->onChangedListener(Lcom/saicmotor/radio/view/widget/RuleView$onChangedListener;)V

    .line 589
    new-instance v0, Lcom/saicmotor/radio/model/event/UpdateSkinEvent;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/model/event/UpdateSkinEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->onUpdateSkinEvent(Lcom/saicmotor/radio/model/event/UpdateSkinEvent;)V

    .line 590
    invoke-direct {p0, v1}, Lcom/saicmotor/radio/view/fragment/FmFragment;->updateFeatureUI(Z)V

    .line 591
    invoke-static {}, Lcom/saicmotor/radio/app/RadioApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ViewUtils;->is1920Size(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favListBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :goto_autostart_done

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v1

    if-eqz v1, :cond_autostart_off

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_autostart_done

    :cond_autostart_off
    const v1, 0x7f0d008d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_autostart_done
    return-void
.end method

.method public isMute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedUpdateSeekBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyChannelIsFavorite(Z)V
    .locals 3

    .line 733
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChannelIsFavorite(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favoriteImageBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 737
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v1, 0x7f070086

    invoke-virtual {p1, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 739
    :cond_0
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v1, 0x7f070095

    invoke-virtual {p1, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->notifyUpdatePreScannedList()V

    return-void
.end method

.method public notifyEnabled(Z)V
    .locals 2

    .line 647
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyEnabled()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favoriteImageBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioFinetuneDownBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioFinetuneUpBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public notifyHideScanningDialog()V
    .locals 2

    .line 994
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyHideScanningDialog()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanDialog:Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v0}, Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;->hideDialog()V

    :cond_0
    return-void
.end method

.method public notifyHideSearchingDialog()V
    .locals 2

    .line 1010
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyHideSearchingDialog()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mSearchDialog:Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {v0}, Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;->hideDialog()V

    :cond_0
    return-void
.end method

.method public notifyRadioMuteState(Z)V
    .locals 3

    .line 1023
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRadioMuteState() isMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1024
    iput-boolean p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseStatus:Z

    .line 1025
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseImageBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1027
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v1, 0x7f07008d

    invoke-virtual {p1, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v1, 0x7f07008c

    invoke-virtual {p1, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyRadioNameChanged(Lcom/android/car/radio/service/RadioStation;)V
    .locals 3

    .line 724
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRadioNameChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x10

    .line 726
    iput v1, v0, Landroid/os/Message;->what:I

    .line 727
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRdsMainInfoChanged([CI)V
    .locals 3

    .line 1050
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRdsMainInfoChanged() psName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   frequency = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public notifyRdsRTTextChanged(Ljava/lang/String;)V
    .locals 3

    .line 1036
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRdsRTTextChanged() rtText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1037
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtText.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1041
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 1042
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1043
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1044
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyShowFavoriteList()V
    .locals 2

    .line 940
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyShowFavoriteList()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->notifyUpdateFavoriteList()V

    return-void
.end method

.method public notifyShowHintDialog()V
    .locals 2

    .line 716
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyShowHintDialog"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanHintDialog:Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;->showDialog()V

    :cond_0
    return-void
.end method

.method public notifyShowPreScannedList()V
    .locals 2

    .line 946
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyShowPreScannedList()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->notifyUpdatePreScannedList()V

    return-void
.end method

.method public notifyShowScanningDialog(Lcom/android/car/radio/service/RadioStation;)V
    .locals 1

    .line 986
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "notifyShowScanningDialog()"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 987
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanDialog:Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;

    if-eqz p1, :cond_0

    .line 988
    invoke-virtual {p1}, Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;->showDialog()V

    :cond_0
    return-void
.end method

.method public notifyShowSearchingDialog()V
    .locals 2

    .line 1002
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyShowSearchingDialog()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mSearchDialog:Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {v0}, Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;->showDialog()V

    :cond_0
    return-void
.end method

.method public notifyStopStatus(Z)V
    .locals 3

    .line 1018
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStopStatus() isStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public notifyUpdateFavoriteList()V
    .locals 2

    .line 952
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyUpdateFavoriteList()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getFavoriteStations()Ljava/util/List;

    move-result-object v0

    .line 965
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->setFavoriteOnList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public notifyUpdateFinetuneSeekbarProgress(I)V
    .locals 3

    .line 981
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUpdateFinetuneSeekbarProgress(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public notifyUpdatePreScannedList()V
    .locals 2

    .line 971
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyUpdatePreScannedList()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getPreScannedStations()Ljava/util/List;

    move-result-object v0

    .line 975
    invoke-direct {p0, v0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->setPreScannedOnList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onChannelBandUpdate(Ljava/lang/String;)V
    .locals 5

    .line 663
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChannelBandUpdate():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x82c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "AM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "   maxScaleValue = "

    const-string v1, "   minScaleValue = "

    const-string v4, "FMAM = "

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    .line 694
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "Band ERROR!"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 681
    :cond_3
    iput v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    .line 682
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_STEP:I

    iput p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    .line 683
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MIN:I

    iput p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    .line 684
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->AM_FREQ_MAX:I

    iput p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    .line 685
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 686
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    iget v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {p1, v0, v1}, Lcom/saicmotor/radio/view/widget/RuleView;->setMinMaxScaleValue(II)V

    .line 687
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/RuleView;->setRuleStep(I)V

    .line 688
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/RuleView;->setBand(I)V

    .line 689
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    invoke-virtual {p1}, Lcom/saicmotor/radio/view/widget/RuleView;->requestLayout()V

    .line 690
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioType:Landroid/widget/TextView;

    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelRateText:Landroid/widget/TextView;

    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 667
    :cond_4
    iput v3, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    .line 668
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_STEP:I

    iput p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    .line 669
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MIN:I

    iput p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    .line 670
    sget p1, Lcom/saicmotor/radio/constant/RadioConstant;->FM_FREQ_MAX:I

    iput p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    .line 671
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 672
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->minScaleValue:I

    iget v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->maxScaleValue:I

    invoke-virtual {p1, v0, v1}, Lcom/saicmotor/radio/view/widget/RuleView;->setMinMaxScaleValue(II)V

    .line 673
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->step:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/RuleView;->setRuleStep(I)V

    .line 674
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    iget v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/RuleView;->setBand(I)V

    .line 675
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    invoke-virtual {p1}, Lcom/saicmotor/radio/view/widget/RuleView;->requestLayout()V

    .line 676
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioType:Landroid/widget/TextView;

    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioChannelRateText:Landroid/widget/TextView;

    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onChannelNumberUpdate(Ljava/lang/String;I)V
    .locals 3

    .line 701
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChannelNumberUpdate(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   channelNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 703
    iput v1, v0, Landroid/os/Message;->what:I

    .line 704
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 705
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 706
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onClearFavoriteList()V
    .locals 8

    .line 829
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onClearFavoriteList()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_7

    .line 831
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mBandTypeArgs:Landroid/os/Bundle;

    const-string v1, "RADIO_BAND"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    sget-object v1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bandType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 833
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "FM"

    const-string v3, "AM"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 834
    iget v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    if-ne v1, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    move-object v0, v3

    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 840
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x82c

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    const/16 v3, 0x8c7

    if-eq v5, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v4

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_2

    .line 845
    :cond_5
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, v7}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->clearFavoriteData(I)V

    goto :goto_2

    .line 842
    :cond_6
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, v4}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->clearFavoriteData(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 315
    :sswitch_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_2

    .line 316
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->switchFavoriteStatus()V

    goto :goto_0

    .line 307
    :sswitch_1
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz p1, :cond_0

    .line 308
    invoke-interface {p1, v0, v0}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestShowHideFmAmList(ZI)V

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->showPreScannedList()V

    goto :goto_0

    .line 339
    :sswitch_2
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_2

    .line 340
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->scan()V

    goto :goto_0

    .line 330
    :sswitch_3
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_2

    .line 331
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->isMute()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->mute(Z)Z

    move-result p1

    .line 332
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 333
    iput v1, v0, Landroid/os/Message;->what:I

    .line 334
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 299
    :sswitch_4
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 300
    invoke-interface {p1, v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestShowHideFmAmList(ZI)V

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->showFavoriteList()V

    goto :goto_0

    .line 296
    :sswitch_5
    invoke-static {v0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->newInstance(I)Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DABDialogFragment"

    invoke-virtual {p1, v0, v1}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_autostart
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :goto_0

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRadioAutoStart(Z)V

    if-eqz v0, :cond_autostart_off2

    const v0, 0x7f0d008e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_autostart_off2
    const v0, 0x7f0d008d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080050 -> :sswitch_5
        0x7f080056 -> :sswitch_4
        0x7f08005c -> :sswitch_3
        0x7f08006c -> :sswitch_2
        0x7f08006e -> :sswitch_1
        0x7f0800bd -> :sswitch_0
        0x7f0801cb -> :sswitch_autostart
    .end sparse-switch
.end method

.method public onDeleteItemClicked(Lcom/android/car/radio/service/RadioStation;)V
    .locals 0

    return-void
.end method

.method public onDeleteSelectFavoriteStation(Lcom/android/car/radio/service/RadioStation;)V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->deleteSelectRadioStation(Lcom/android/car/radio/service/RadioStation;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 420
    invoke-super {p0}, Lcom/saicmotor/radio/base/BaseFragment;->onDestroy()V

    .line 422
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onDestroy()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->shutdown()V

    :cond_2
    return-void
.end method

.method public onFavoriteItemClicked(Lcom/android/car/radio/service/RadioStation;)V
    .locals 2

    .line 782
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onFavoriteItemClicked()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToRadioChannel(Lcom/android/car/radio/service/RadioStation;)V

    :cond_0
    return-void
.end method

.method public onPrescannedItemClicked(Lcom/android/car/radio/service/RadioStation;)V
    .locals 2

    .line 904
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onPrescannedItemClicked()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToRadioChannel(Lcom/android/car/radio/service/RadioStation;)V

    :cond_0
    return-void
.end method

.method public onRadioStationChanged(Lcom/android/car/radio/service/RadioStation;)V
    .locals 3

    .line 753
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioStationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 755
    iput-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mCurrentStation:Lcom/android/car/radio/service/RadioStation;

    .line 757
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 758
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onRadioStationChanged(): is not mainthread!"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 759
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->handleRadioStationChanged()V

    return-void
.end method

.method public onSetSelectRadioChannel(Lcom/android/car/radio/service/RadioStation;)V
    .locals 2

    .line 822
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onSetSelectRadioChannel()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->tuneToRadioChannel(Lcom/android/car/radio/service/RadioStation;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 394
    invoke-super {p0}, Lcom/saicmotor/radio/base/BaseFragment;->onStart()V

    .line 395
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->initialize(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->setRadioStationChangeListener(Lcom/saicmotor/radio/listener/RadioStationChangeListener;)V

    .line 399
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestFmAmFavoriteActiveRadioStation(Lcom/android/car/radio/service/RadioStation;)V

    .line 401
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->getCurrentRadioStation()Lcom/android/car/radio/service/RadioStation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestFmAmSearchActiveRadioStation(Lcom/android/car/radio/service/RadioStation;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->start()V

    :cond_1
    return-void
.end method

.method public onSwitchFavoriteWithRadioStation(Lcom/android/car/radio/service/RadioStation;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->switchFavoriteStatusWithRadioStation(Lcom/android/car/radio/service/RadioStation;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x6

    const/4 v1, 0x5

    const v2, 0x7f080058

    const v3, 0x7f08005e

    const/4 v4, 0x1

    const-wide/16 v5, 0x1f4

    if-eqz p2, :cond_3

    if-eq p2, v4, :cond_0

    goto/16 :goto_1

    .line 363
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v7, 0x0

    if-ne p2, v3, :cond_1

    .line 364
    sget-object p2, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onTouch - up pre remove setp pre"

    invoke-virtual {p2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 365
    iget-object p2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPressTime:J

    sub-long/2addr v0, v2

    cmp-long p2, v0, v5

    if-gez p2, :cond_2

    .line 367
    sget-object p2, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onTouch - less 500 do seek pre"

    invoke-virtual {p2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 368
    iget-object p2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p2, :cond_2

    .line 369
    iget-object p2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p2, v7}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->seek(Z)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 373
    sget-object p2, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onTouch - up next remove setp next"

    invoke-virtual {p2, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 374
    iget-object p2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPressTime:J

    sub-long/2addr v0, v2

    cmp-long p2, v0, v5

    if-gez p2, :cond_2

    .line 376
    iget-object p2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p2, :cond_2

    .line 377
    sget-object p2, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onTouch - less 500 do seek next"

    invoke-virtual {p2, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 378
    iget-object p2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p2, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p2, v4}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->seek(Z)V

    .line 383
    :cond_2
    :goto_0
    invoke-virtual {p1, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 353
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPressTime:J

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, v3, :cond_4

    .line 355
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string p2, "onTouch - down - send pre msg"

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 357
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 358
    sget-object p1, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string p2, "onTouch - down - send nex msg"

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    return v4
.end method

.method public onUpdateFeatureUI(Lcom/saicmotor/radio/model/event/UpdateFeatureUI;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 436
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFeatureUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/saicmotor/radio/model/event/UpdateFeatureUI;->mFeatureStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " --- FMAM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 437
    iget-boolean p1, p1, Lcom/saicmotor/radio/model/event/UpdateFeatureUI;->mFeatureStatus:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 438
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/FmFragment;->updateFeatureUI(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateSkinEvent(Lcom/saicmotor/radio/model/event/UpdateSkinEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 444
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSkinEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/saicmotor/radio/model/event/UpdateSkinEvent;->mSkinType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_3

    .line 446
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favoriteImageBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 447
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->currentStationIsFavorite()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favoriteImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favoriteImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseImageBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    .line 454
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->isMute()Z

    move-result p1

    .line 455
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSkinEvent muteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 457
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->ruleView:Lcom/saicmotor/radio/view/widget/RuleView;

    if-eqz p1, :cond_4

    .line 464
    invoke-virtual {p1}, Lcom/saicmotor/radio/view/widget/RuleView;->updateSkinType()V

    :cond_4
    return-void
.end method

.method public setAmScan(I)V
    .locals 3

    .line 804
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmScan  scanState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 807
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->scan()V

    goto :goto_0

    .line 809
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioBandPresenter;->cancelScanning()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setLayoutId()I
    .locals 3

    .line 519
    sget-object v0, Lcom/saicmotor/radio/view/fragment/FmFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayoutId() FMAM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->FMAM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/FmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ViewUtils;->getWhellPosition(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0042

    return v0

    :cond_0
    const v0, 0x7f0b0041

    return v0
.end method

.method public setListeners()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mIbRdsSetting:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favoriteImageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->playPauseImageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioFinetuneDownBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 608
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mRadioFinetuneUpBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 609
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->favListBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->searchListBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanDialog:Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;

    if-eqz v0, :cond_0

    .line 613
    new-instance v1, Lcom/saicmotor/radio/view/fragment/FmFragment$3;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/view/fragment/FmFragment$3;-><init>(Lcom/saicmotor/radio/view/fragment/FmFragment;)V

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/view/dialog/CarRadioScanningDialog;->setDialogCancelBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mSearchDialog:Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;

    if-eqz v0, :cond_1

    .line 621
    new-instance v1, Lcom/saicmotor/radio/view/fragment/FmFragment$4;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/view/fragment/FmFragment$4;-><init>(Lcom/saicmotor/radio/view/fragment/FmFragment;)V

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/view/dialog/CarRadioSearchingDialog;->setDialogCancelBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mScanHintDialog:Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;

    if-eqz v0, :cond_2

    .line 630
    new-instance v1, Lcom/saicmotor/radio/view/fragment/FmFragment$5;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/view/fragment/FmFragment$5;-><init>(Lcom/saicmotor/radio/view/fragment/FmFragment;)V

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/view/dialog/CarRadioHintDialog;->setDialogOkBtnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setUIRequestListener(Lcom/saicmotor/radio/listener/UIRequestListener;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/saicmotor/radio/view/fragment/FmFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    return-void
.end method

.method public showFavoriteItemDeleteBtn()V
    .locals 0

    return-void
.end method
