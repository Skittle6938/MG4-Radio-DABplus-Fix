.class public Lcom/saicmotor/radio/view/fragment/DabFragment;
.super Lcom/saicmotor/radio/base/BaseFragment;
.source "DabFragment.java"

# interfaces
.implements Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/saicmotor/radio/base/BaseFragment<",
        "Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;",
        "Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;",
        ">;",
        "Lcom/saicmotor/radio/contract/CarRadioContract$ICarRadioDabView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;

.field private static final MSG_UPDATE_DAB_DLS_CHANGED:I = 0x4

.field private static final MSG_UPDATE_DAB_LOGO_CHANGED:I = 0x6

.field private static final MSG_UPDATE_DAB_SLIDE_SHOW_CHANGED:I = 0x5

.field private static final MSG_UPDATE_DAB_STATION_INFO:I = 0x3

.field private static final MSG_UPDATE_PLAY_STATE:I


# instance fields
.field private dabLogoBitmap:Landroid/graphics/Bitmap;

.field private dabSlideshowItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/saicmotor/radio/model/bean/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerAdapter:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerAdapter<",
            "Lcom/saicmotor/radio/model/bean/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

.field private mDabEnsembleName:Landroid/widget/TextView;

.field private mDabFavoriteImageBtn:Landroid/widget/ImageButton;

.field private mDabFavoriteListBtn:Landroid/widget/Button;

.field private mDabLogoImageView:Landroid/widget/ImageView;

.field private mDabNowplayingText:Lcom/saicmotor/radio/view/widget/MarqueTextView;

.field private mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

.field private mDabProgramBtn:Landroid/widget/Button;

.field private mDabScanBtn:Landroid/widget/Button;

.field private mDabScanListBtn:Landroid/widget/Button;

.field private mDabServiceName:Landroid/widget/TextView;

.field private mDabSettingBtn:Landroid/widget/ImageButton;

.field private mDabStepBackwardBtn:Landroid/widget/Button;

.field private mDabStepForwardBtn:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field private mHasDabLogo:Z

.field private mLlDabBaseFunction:Landroid/widget/LinearLayout;

.field private mLlDabInfo:Landroid/widget/LinearLayout;

.field private mSwitchLogoSlideshowBtn:Landroid/widget/Button;

.field private mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

.field private showLogoSlideshowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/view/fragment/DabFragment;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/saicmotor/radio/base/BaseFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabSlideshowItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->showLogoSlideshowType:I

    .line 88
    iput-boolean v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHasDabLogo:Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/saicmotor/radio/view/fragment/DabFragment$1;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/view/fragment/DabFragment$1;-><init>(Lcom/saicmotor/radio/view/fragment/DabFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/saicmotor/radio/view/fragment/DabFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$100()Lcom/saicmotor/radio/utils/log/Logger;
    .locals 1

    .line 59
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/saicmotor/radio/view/fragment/DabFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateSlideShow(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/saicmotor/radio/view/fragment/DabFragment;)Lcom/saicmotor/radio/listener/UIRequestListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/saicmotor/radio/view/fragment/DabFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteImageBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/saicmotor/radio/view/fragment/DabFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/saicmotor/radio/view/fragment/DabFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/saicmotor/radio/view/fragment/DabFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabServiceName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/saicmotor/radio/view/fragment/DabFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabEnsembleName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/saicmotor/radio/view/fragment/DabFragment;)Lcom/saicmotor/radio/view/widget/MarqueTextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabNowplayingText:Lcom/saicmotor/radio/view/widget/MarqueTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/saicmotor/radio/view/fragment/DabFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateDabLogo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/saicmotor/radio/view/fragment/DabFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/saicmotor/radio/view/fragment/DabFragment;)Lcom/saicmotor/radio/base/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/saicmotor/radio/view/fragment/DabFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabLogoBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$802(Lcom/saicmotor/radio/view/fragment/DabFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabLogoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$902(Lcom/saicmotor/radio/view/fragment/DabFragment;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHasDabLogo:Z

    return p1
.end method

.method private updateDabLogo(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    .line 446
    :try_start_0
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 448
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 450
    sget-object v2, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mll dw = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  dh = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 463
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e.string = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private declared-synchronized updateFeatureUI()V
    .locals 5

    monitor-enter p0

    .line 222
    :try_start_0
    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lez v0, :cond_3

    .line 223
    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v2, "radio_DAB___"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v2, "radio_DAB_DABBase__"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v2, "radio_DAB_DABSearchAndPlay_DABplaylist_"

    .line 224
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mLlDabInfo:Landroid/widget/LinearLayout;

    const-string v2, "radio_DAB___"

    invoke-static {v2}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mLlDabBaseFunction:Landroid/widget/LinearLayout;

    const-string v2, "radio_DAB_DABBase__"

    invoke-static {v2}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabProgramBtn:Landroid/widget/Button;

    const-string v2, "radio_DAB_DABSearchAndPlay_DABplaylist_"

    invoke-static {v2}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabProgramBtn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabProgramBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateSlideShow(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/model/RadioStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/model/RadioStorage;->getDabSlideShow()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabSlideshowItems:Ljava/util/List;

    .line 469
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz p1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabSlideshowItems:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/saicmotor/radio/utils/CompareBitmapUtils;->compareBitmap(Ljava/util/List;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabSlideshowItems:Ljava/util/List;

    new-instance v1, Lcom/saicmotor/radio/model/bean/BannerItem;

    invoke-direct {v1, p1}, Lcom/saicmotor/radio/model/bean/BannerItem;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object p1, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dabSlideshowItems.add = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabSlideshowItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_0
    sget-object p1, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "dab slideshow items have the same bitmap"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_1
    sget-object p1, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "updateSlideShow bitmpa = null"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 481
    :cond_2
    :goto_0
    sget-object p1, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dabSlideshowItems = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabSlideshowItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerAdapter:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerAdapter;

    if-eqz p1, :cond_3

    .line 483
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabSlideshowItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerAdapter;->setDatas(Ljava/util/List;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/saicmotor/radio/base/BasePresenter;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->createPresenter()Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;
    .locals 2

    .line 181
    new-instance v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected initView()V
    .locals 6

    .line 285
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "initView()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteListBtn:Landroid/widget/Button;

    .line 291
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabProgramBtn:Landroid/widget/Button;

    .line 293
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mLlDabInfo:Landroid/widget/LinearLayout;

    .line 294
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mLlDabBaseFunction:Landroid/widget/LinearLayout;

    .line 295
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabSettingBtn:Landroid/widget/ImageButton;

    .line 297
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteImageBtn:Landroid/widget/ImageButton;

    .line 298
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabStepForwardBtn:Landroid/widget/Button;

    .line 299
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabStepBackwardBtn:Landroid/widget/Button;

    .line 300
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

    .line 301
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabScanListBtn:Landroid/widget/Button;

    .line 302
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabScanBtn:Landroid/widget/Button;

    .line 304
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabServiceName:Landroid/widget/TextView;

    .line 305
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/MarqueTextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabNowplayingText:Lcom/saicmotor/radio/view/widget/MarqueTextView;

    .line 306
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabEnsembleName:Landroid/widget/TextView;

    .line 307
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabLogoImageView:Landroid/widget/ImageView;

    .line 308
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    .line 309
    iget v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->showLogoSlideshowType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;->setVisibility(I)V

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f080069

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mSwitchLogoSlideshowBtn:Landroid/widget/Button;

    .line 317
    iget v3, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->showLogoSlideshowType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 318
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v3

    const v4, 0x7f0c00d2

    invoke-virtual {v3, v4}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 320
    :cond_2
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v3

    const v4, 0x7f0c00db

    invoke-virtual {v3, v4}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_1
    new-instance v0, Lcom/saicmotor/radio/view/fragment/DabFragment$2;

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0049

    const/4 v5, 0x0

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/saicmotor/radio/view/fragment/DabFragment$2;-><init>(Lcom/saicmotor/radio/view/fragment/DabFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerAdapter:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerAdapter;

    .line 330
    iget-object v3, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    invoke-virtual {v3, v0}, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;->setAdapter(Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerAdapter;)V

    .line 331
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabLogoBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateDabLogo(Landroid/graphics/Bitmap;)V

    .line 332
    new-instance v0, Lcom/saicmotor/radio/model/event/UpdateSkinEvent;

    invoke-direct {v0, v2}, Lcom/saicmotor/radio/model/event/UpdateSkinEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->onUpdateSkinEvent(Lcom/saicmotor/radio/model/event/UpdateSkinEvent;)V

    .line 333
    invoke-direct {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateFeatureUI()V

    .line 334
    invoke-static {}, Lcom/saicmotor/radio/app/RadioApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ViewUtils;->is1920Size(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mLlDabBaseFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 336
    iget-object v3, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteListBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x800003

    .line 337
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v1, 0x90

    const/16 v3, 0x1c

    .line 338
    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 339
    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mLlDabBaseFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :goto_autostart_done

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v1

    if-eqz v1, :cond_autostart_init_off

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_autostart_done

    :cond_autostart_init_off
    const v1, 0x7f0d008d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_autostart_done
    return-void
.end method

.method public notifyCurrentDabStationIsFavorite(Z)V
    .locals 3

    .line 591
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCurrentDabStationIsFavorite(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteImageBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 595
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v1, 0x7f070086

    invoke-virtual {p1, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v1, 0x7f070095

    invoke-virtual {p1, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_2

    .line 601
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getRadioDabStationList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/saicmotor/radio/view/fragment/DabFragment;->notifyDabStationListInfoChanged(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public notifyDabDLSChanged([C)V
    .locals 1

    .line 583
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 584
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 585
    iput p1, v0, Landroid/os/Message;->what:I

    .line 586
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDabFavoriteListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioDabStation;",
            ">;)V"
        }
    .end annotation

    .line 534
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabFavoriteListChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v0, p1}, Lcom/saicmotor/radio/listener/UIRequestListener;->notifyDabFavoriteListChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public notifyDabInfoChanged(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 2

    .line 542
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyDabInfoChanged"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 543
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 544
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 545
    iput p1, v0, Landroid/os/Message;->what:I

    .line 546
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDabServiceLogoChanged([B)V
    .locals 2

    .line 560
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyDabServiceLogoChanged"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 564
    :try_start_0
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v0, 0x7f0c004b

    invoke-virtual {p1, v0}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 566
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 569
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabLogoBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/saicmotor/radio/utils/CompareBitmapUtils;->compareTowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 573
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 574
    iput p1, v0, Landroid/os/Message;->what:I

    .line 575
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 577
    :cond_1
    sget-object p1, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "notifyDabServiceLogoChanged bitmap equal return"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public notifyDabSlideShowChanged(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 551
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "notifyDabSlideShowChanged"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 552
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 553
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 554
    iput p1, v0, Landroid/os/Message;->what:I

    .line 555
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDabStationListInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/radio/service/RadioDabStation;",
            ">;)V"
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabStationListInfoChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v0, p1}, Lcom/saicmotor/radio/listener/UIRequestListener;->notifyDabStationListInfoChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public notifyEnabled(Z)V
    .locals 0

    return-void
.end method

.method public notifyRadioMuteState(Z)V
    .locals 3

    .line 514
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRadioMuteState() isMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 517
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v1, 0x7f07008d

    invoke-virtual {p1, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 519
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

.method public onClearFavoriteList()V
    .locals 2

    .line 501
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onClearFavoriteList()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->clearDabFavoriteData()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080069

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const v3, 0x7f0801cb

    if-eq p1, v3, :cond_autostart

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 410
    :pswitch_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_3

    .line 411
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->isMute()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->mute(Z)Z

    move-result p1

    .line 412
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 413
    iput v2, v0, Landroid/os/Message;->what:I

    .line 414
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 390
    :pswitch_1
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_3

    .line 391
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->switchDabFavoriteStatus()V

    goto/16 :goto_0

    .line 424
    :pswitch_2
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz p1, :cond_3

    .line 425
    invoke-interface {p1, v1, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestShowHideDabList(ZI)V

    goto/16 :goto_0

    .line 432
    :pswitch_3
    sget-object p1, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "on click scan btn"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_3

    .line 434
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->queryDabStationList()V

    goto/16 :goto_0

    .line 367
    :pswitch_4
    invoke-static {v2}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->newInstance(I)Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DABDialogFragment"

    invoke-virtual {p1, v0, v1}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :pswitch_5
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-static {p1}, Lcom/saicmotor/radio/view/dialog/ProgramDialog;->newInstance(Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;)Lcom/saicmotor/radio/view/dialog/ProgramDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DABProgramDialog"

    invoke-virtual {p1, v0, v1}, Lcom/saicmotor/radio/view/dialog/ProgramDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_6
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_3

    .line 401
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1, v2}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->dabSeek(Z)V

    goto :goto_0

    .line 405
    :pswitch_7
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_3

    .line 406
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1, v1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->dabSeek(Z)V

    goto :goto_0

    .line 419
    :pswitch_8
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz p1, :cond_3

    .line 420
    invoke-interface {p1, v1, v2}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestShowHideDabList(ZI)V

    goto :goto_0

    .line 370
    :cond_0
    iget p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->showLogoSlideshowType:I

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    iput v2, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->showLogoSlideshowType:I

    .line 380
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabLogoBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateDabLogo(Landroid/graphics/Bitmap;)V

    .line 381
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mSwitchLogoSlideshowBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f0c00db

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 372
    :cond_2
    iput v1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->showLogoSlideshowType:I

    const/4 p1, 0x0

    .line 373
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateSlideShow(Landroid/graphics/Bitmap;)V

    .line 374
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    invoke-virtual {p1, v2}, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;->setVisibility(I)V

    .line 376
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mSwitchLogoSlideshowBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f0c00d2

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_autostart
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mRootView:Landroid/view/View;

    const v0, 0x7f0801cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :goto_0

    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRadioAutoStart()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRadioAutoStart(Z)V

    if-eqz v1, :cond_autostart_off

    const v0, 0x7f0d008e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_autostart_off
    const v0, 0x7f0d008d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08004c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0800bb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeleteSelectFavoriteStation(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->deleteSelectRadioDabStation(Lcom/android/car/radio/service/RadioDabStation;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/saicmotor/radio/base/BaseFragment;->onDestroy()V

    .line 215
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onDestroy()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->shutdown()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 208
    invoke-super {p0}, Lcom/saicmotor/radio/base/BaseFragment;->onPause()V

    .line 209
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onPause()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onSetSelectRadioDabStation(Lcom/android/car/radio/service/RadioDabStation;)V
    .locals 2

    .line 494
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v1, "onSetSelectRadioDabStation()"

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->dabTune(Lcom/android/car/radio/service/RadioDabStation;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 195
    invoke-super {p0}, Lcom/saicmotor/radio/base/BaseFragment;->onStart()V

    .line 196
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->initialize()V

    .line 198
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v0, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v0}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->start()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    if-eqz v0, :cond_1

    .line 201
    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getCurrentRadioDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestDabFavoriteActiveStation(Lcom/android/car/radio/service/RadioDabStation;)V

    .line 202
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    iget-object v1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast v1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {v1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->getCurrentRadioDabStation()Lcom/android/car/radio/service/RadioDabStation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/saicmotor/radio/listener/UIRequestListener;->requestDabSearchActiveStation(Lcom/android/car/radio/service/RadioDabStation;)V

    :cond_1
    return-void
.end method

.method public onUpdateFeatureUI(Lcom/saicmotor/radio/model/event/UpdateFeatureUI;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 239
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFeatureUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/saicmotor/radio/model/event/UpdateFeatureUI;->mFeatureStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 240
    iget-boolean p1, p1, Lcom/saicmotor/radio/model/event/UpdateFeatureUI;->mFeatureStatus:Z

    if-eqz p1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateFeatureUI()V

    :cond_0
    return-void
.end method

.method public onUpdateSkinEvent(Lcom/saicmotor/radio/model/event/UpdateSkinEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 247
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSkinEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/saicmotor/radio/model/event/UpdateSkinEvent;->mSkinType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 248
    iget p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->showLogoSlideshowType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 249
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mSwitchLogoSlideshowBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f0c00d2

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mSwitchLogoSlideshowBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f0c00db

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mBannerView:Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;

    if-eqz p1, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/saicmotor/radio/view/widget/bannerview/banner_view/BannerView;->showEmptyView()V

    .line 256
    :cond_1
    iget-boolean p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mHasDabLogo:Z

    if-nez p1, :cond_2

    .line 257
    sget-object p1, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v0, "onUpdateSkinEvent update default slide show"

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object p1

    const v0, 0x7f0c004b

    invoke-virtual {p1, v0}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->dabLogoBitmap:Landroid/graphics/Bitmap;

    .line 259
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateDabLogo(Landroid/graphics/Bitmap;)V

    :cond_2
    const/4 p1, 0x0

    .line 261
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/fragment/DabFragment;->updateSlideShow(Landroid/graphics/Bitmap;)V

    .line 262
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    if-eqz p1, :cond_6

    .line 263
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteImageBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 264
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->currentDabStationIsFavorite()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 265
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 267
    :cond_3
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    .line 271
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mPresenter:Lcom/saicmotor/radio/base/BasePresenter;

    check-cast p1, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;

    invoke-virtual {p1}, Lcom/saicmotor/radio/presenter/CarRadioDabPresenter;->isMute()Z

    move-result p1

    .line 272
    sget-object v0, Lcom/saicmotor/radio/view/fragment/DabFragment;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSkinEvent muteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 274
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 276
    :cond_5
    iget-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v0

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Lcom/saicmotor/skinloader/loader/SkinManager;->getTrueDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected setLayoutId()I
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/fragment/DabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/utils/ViewUtils;->getWhellPosition(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0047

    return v0

    :cond_0
    const v0, 0x7f0b0045

    return v0
.end method

.method protected setListeners()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mSwitchLogoSlideshowBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteListBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabProgramBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabSettingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabFavoriteImageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabStepForwardBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabStepBackwardBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabPlayPauseImageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabScanListBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mDabScanBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUIRequestListener(Lcom/saicmotor/radio/listener/UIRequestListener;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/saicmotor/radio/view/fragment/DabFragment;->mUIRequestListener:Lcom/saicmotor/radio/listener/UIRequestListener;

    return-void
.end method
