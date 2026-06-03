.class public Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;
.super Landroid/app/DialogFragment;
.source "RadioRDSSettingsDialog.java"

# interfaces
.implements Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;

.field public static final TAG:Ljava/lang/String; = "DABDialogFragment"


# instance fields
.field private dabRdsConfig:I

.field private fmRdsConfig:I

.field mCSDabServiceFollowing:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabAlarm:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabEvent:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabFinance:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabNews:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabRadioInfo:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabSpecial:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabSports:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabTraffic:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabTravel:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabWarning:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVDabWeather:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVFMAlternativeFrequency:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVFMRDSRegional:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mCSVFMTraffiAnnouncement:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

.field mDabSettingBtn:Landroid/widget/Button;

.field mDabSettingSelectIv:Landroid/widget/ImageView;

.field mFMDistDXBtn:Landroid/widget/Button;

.field mFMDistLOBtn:Landroid/widget/Button;

.field mFMSetitngSelectIv:Landroid/widget/ImageView;

.field mFMSettingBtn:Landroid/widget/Button;

.field mIbCancel:Landroid/widget/ImageButton;

.field private mLayout_dab_btn:Landroid/widget/LinearLayout;

.field mLlDabRds:Landroid/widget/LinearLayout;

.field mLlFMRds:Landroid/widget/LinearLayout;

.field private mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

.field private mRootView:Landroid/view/View;

.field private showRdsSettingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/16 v0, 0x803

    .line 75
    iput v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    const/16 v0, 0x1f

    .line 76
    iput v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->showRdsSettingType:I

    return-void
.end method

.method private initData()V
    .locals 5

    .line 199
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->initDabAnnouncement()V

    .line 200
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    const-string v1, "DAB_ANNOUNCEMENT_INFO"

    .line 201
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->contain(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 203
    sget-object v0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v3, "use default dabRdsConfig"

    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getDabAnnouncementInfo()I

    move-result v0

    iput v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 206
    sget-object v3, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "dabRdsConfig = %2x"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    const-string v3, "RDS_CONFIG_INFO"

    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->contain(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRdsInfo(I)V

    .line 210
    sget-object v0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v3, "use default fmRdsConfig"

    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    invoke-virtual {v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->getRdsInfo()I

    move-result v0

    iput v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    .line 213
    sget-object v3, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "fmRdsConfig = %2x"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 217
    :goto_1
    # PATCH: read "auto_play_on_start" preference to initialise mCSDabServiceFollowing
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getContext()Landroid/content/Context;
    move-result-object v0
    const-string v3, "com.saicmotor.radio.RadioStorage"
    const/4 v4, 0x0
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v3, "auto_play_on_start"
    const/4 v4, 0x1
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v3
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSDabServiceFollowing:Lcom/saicmotor/radio/view/widget/CustomSwitchView;
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabNews:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0xa

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabWeather:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x9

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabSports:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabFinance:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    move v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabTravel:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabEvent:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x5

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    move v3, v1

    :goto_8
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabSpecial:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    move v3, v1

    :goto_9
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabRadioInfo:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x3

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabWarning:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/lit8 v3, v3, 0x2

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_b

    move v3, v2

    goto :goto_b

    :cond_b
    move v3, v1

    :goto_b
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabTraffic:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    shr-int/2addr v3, v2

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_c

    move v3, v2

    goto :goto_c

    :cond_c
    move v3, v1

    :goto_c
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabAlarm:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    move v3, v1

    :goto_d
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMTraffiAnnouncement:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    shr-int/lit8 v3, v3, 0x3

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_e

    move v3, v2

    goto :goto_e

    :cond_e
    move v3, v1

    :goto_e
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMAlternativeFrequency:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    shr-int/lit8 v3, v3, 0x2

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_f

    move v3, v2

    goto :goto_f

    :cond_f
    move v3, v1

    :goto_f
    invoke-virtual {v0, v3}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistLOBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    shr-int/2addr v3, v2

    and-int/2addr v3, v2

    if-nez v3, :cond_10

    move v3, v2

    goto :goto_10

    :cond_10
    move v3, v1

    :goto_10
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 233
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistDXBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    shr-int/2addr v3, v2

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_11

    move v3, v2

    goto :goto_11

    :cond_11
    move v3, v1

    :goto_11
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 234
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMRDSRegional:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_12

    move v1, v2

    :cond_12
    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setChecked(Z)V

    .line 236
    invoke-direct {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->updateTitleAndView()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mDabSettingBtn:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mDabSettingSelectIv:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMSettingBtn:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMSetitngSelectIv:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLlDabRds:Landroid/widget/LinearLayout;

    .line 144
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLlFMRds:Landroid/widget/LinearLayout;

    .line 146
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mIbCancel:Landroid/widget/ImageButton;

    .line 148
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSDabServiceFollowing:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 149
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabNews:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 150
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabWeather:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 151
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabSports:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 152
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabFinance:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 153
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabTravel:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 154
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabEvent:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 155
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabSpecial:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 156
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabRadioInfo:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 157
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabWarning:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 158
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabTraffic:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 159
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabAlarm:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 161
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMTraffiAnnouncement:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 162
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMAlternativeFrequency:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 163
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistDXBtn:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistLOBtn:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMRDSRegional:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    .line 166
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLayout_dab_btn:Landroid/widget/LinearLayout;

    .line 167
    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_DAB___"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLayout_dab_btn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 169
    invoke-static {v1}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mDabSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mIbCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSDabServiceFollowing:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabNews:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabWeather:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabSports:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabFinance:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabTravel:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabEvent:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabSpecial:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabRadioInfo:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabWarning:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabTraffic:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVDabAlarm:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMTraffiAnnouncement:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMAlternativeFrequency:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistDXBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistLOBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mCSVFMRDSRegional:Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {v0, p0}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->setOnSwitchViewClickListener(Lcom/saicmotor/radio/view/widget/CustomSwitchView$SwitchViewClickListener;)V

    return-void
.end method

.method public static newInstance(I)Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;
    .locals 2

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    new-instance v1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;

    invoke-direct {v1}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;-><init>()V

    .line 83
    invoke-virtual {v1, v0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 84
    invoke-direct {v1, p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->setShowSettingType(I)V

    return-object v1
.end method

.method private refreshButtonSkin(Landroid/view/View;)V
    .locals 3

    .line 119
    instance-of v0, p1, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/saicmotor/radio/view/widget/CustomSwitchView;

    invoke-virtual {p1}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->skinChanged()V

    return-void

    .line 123
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Landroid/view/ViewGroup;

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->refreshButtonSkin(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDialogBackground()V
    .locals 3

    .line 266
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 267
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 268
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 271
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setDialogWindow()V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 251
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/saicmotor/radio/utils/ViewUtils;->is1920Size(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setShowSettingType(I)V
    .locals 3

    .line 132
    sget-object v0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 133
    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->showRdsSettingType:I

    return-void
.end method

.method private updateTitleAndView()V
    .locals 7

    .line 276
    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->showRdsSettingType:I

    const/4 v1, 0x4

    const v2, 0x7f050031

    const v3, 0x7f050030

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    if-eq v0, v6, :cond_0

    goto/16 :goto_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mDabSettingBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/saicmotor/skinloader/loader/SkinManager;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 287
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mDabSettingSelectIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMSettingBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/saicmotor/skinloader/loader/SkinManager;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 289
    sget-object v0, Lcom/saicmotor/radio/utils/FeatureUtil;->mFeatureMap:Ljava/util/Map;

    const-string v1, "radio_DAB___"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMSetitngSelectIv:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/saicmotor/radio/utils/FeatureUtil;->getValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLlDabRds:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLlFMRds:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mDabSettingBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/saicmotor/skinloader/loader/SkinManager;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mDabSettingSelectIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMSettingBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/saicmotor/skinloader/loader/SkinManager;->getInstance()Lcom/saicmotor/skinloader/loader/SkinManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/saicmotor/skinloader/loader/SkinManager;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMSetitngSelectIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLlDabRds:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mLlFMRds:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public disMissDialog()V
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "fm_enhanced_other_networks_swich -> fmRdsConfig = %2x"

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 523
    :sswitch_0
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistLOBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 526
    :cond_0
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    and-int/lit16 p1, p1, 0xfd

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    .line 527
    iget-object v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistLOBtn:Landroid/widget/Button;

    shr-int/2addr p1, v2

    and-int/2addr p1, v2

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 528
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistDXBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    shr-int/2addr v3, v2

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 529
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_3

    .line 531
    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRdsInfo(I)V

    .line 533
    :cond_3
    invoke-static {}, Lcom/saicmotor/radio/manager/RadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object p1

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRdsConfig(I)V

    goto :goto_4

    .line 510
    :sswitch_1
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistDXBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 513
    :cond_4
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    .line 514
    iget-object v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistLOBtn:Landroid/widget/Button;

    shr-int/2addr p1, v2

    and-int/2addr p1, v2

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 515
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mFMDistDXBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    shr-int/2addr v3, v2

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 516
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_7

    .line 518
    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRdsInfo(I)V

    .line 520
    :cond_7
    invoke-static {}, Lcom/saicmotor/radio/manager/RadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object p1

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, v0}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRdsConfig(I)V

    goto :goto_4

    .line 506
    :sswitch_2
    iput v2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->showRdsSettingType:I

    .line 507
    invoke-direct {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->updateTitleAndView()V

    goto :goto_4

    .line 502
    :sswitch_3
    iput v1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->showRdsSettingType:I

    .line 503
    invoke-direct {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->updateTitleAndView()V

    goto :goto_4

    .line 499
    :sswitch_4
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->disMissDialog()V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080048 -> :sswitch_4
        0x7f080053 -> :sswitch_3
        0x7f080057 -> :sswitch_2
        0x7f08006a -> :sswitch_1
        0x7f08006b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0055

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    .line 99
    invoke-direct {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->initView()V

    .line 100
    invoke-direct {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->initData()V

    .line 101
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 107
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 241
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 242
    invoke-direct {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->setDialogBackground()V

    .line 243
    invoke-direct {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->setDialogWindow()V

    return-void
.end method

.method public onSwitchViewClicked(Lcom/saicmotor/radio/view/widget/CustomSwitchView;Z)V
    .locals 3

    .line 305
    invoke-virtual {p1}, Lcom/saicmotor/radio/view/widget/CustomSwitchView;->getId()I

    move-result p1

    const v0, 0x7f0800ab

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1c

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_f

    :pswitch_0
    if-eqz p2, :cond_0

    .line 456
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    goto :goto_0

    .line 458
    :cond_0
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    and-int/lit16 p1, p1, 0xf7

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    .line 460
    :goto_0
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "fm_traffic_announcement_swich -> fmRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_1

    .line 462
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRdsInfo(I)V

    .line 464
    :cond_1
    invoke-static {}, Lcom/saicmotor/radio/manager/RadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRdsConfig(I)V

    goto/16 :goto_f

    :pswitch_1
    if-eqz p2, :cond_2

    .line 480
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    goto :goto_1

    .line 482
    :cond_2
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    and-int/lit16 p1, p1, 0xfe

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    .line 484
    :goto_1
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "fm_rds_regional_swich -> fmRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_3

    .line 486
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRdsInfo(I)V

    .line 488
    :cond_3
    invoke-static {}, Lcom/saicmotor/radio/manager/RadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRdsConfig(I)V

    goto/16 :goto_f

    :pswitch_2
    if-eqz p2, :cond_4

    .line 321
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_2

    .line 323
    :cond_4
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xdff

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 325
    :goto_2
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_weather_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_5

    .line 327
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 329
    :cond_5
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_3
    if-eqz p2, :cond_6

    .line 405
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_3

    .line 407
    :cond_6
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xffb

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 409
    :goto_3
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_warning_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_7

    .line 411
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 413
    :cond_7
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_4
    if-eqz p2, :cond_8

    .line 357
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_4

    .line 359
    :cond_8
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xfbf

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 361
    :goto_4
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_travel_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_9

    .line 363
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 365
    :cond_9
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_5
    if-eqz p2, :cond_a

    .line 417
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_5

    .line 419
    :cond_a
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xffd

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 421
    :goto_5
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_traffic_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_b

    .line 423
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 425
    :cond_b
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_6
    if-eqz p2, :cond_c

    .line 333
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_6

    .line 335
    :cond_c
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xeff

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 337
    :goto_6
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_sports_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_d

    .line 339
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 341
    :cond_d
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_7
    if-eqz p2, :cond_e

    .line 381
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_7

    .line 383
    :cond_e
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xfef

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 385
    :goto_7
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_special_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_f

    .line 387
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 389
    :cond_f
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_8
    # PATCH: repurposed — writes "auto_play_on_start" to RadioStorage SharedPreferences
    invoke-virtual {p0}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->getContext()Landroid/content/Context;
    move-result-object v0
    const-string v1, "com.saicmotor.radio.RadioStorage"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "auto_play_on_start"
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    goto/16 :goto_f

    :pswitch_9
    if-eqz p2, :cond_12

    .line 393
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_9

    .line 395
    :cond_12
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xff7

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 397
    :goto_9
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_radio_info_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_13

    .line 399
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 401
    :cond_13
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_a
    if-eqz p2, :cond_14

    .line 309
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_a

    .line 311
    :cond_14
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xbff

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 313
    :goto_a
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_news_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_15

    .line 315
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 317
    :cond_15
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_b
    if-eqz p2, :cond_16

    .line 345
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_b

    .line 347
    :cond_16
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xf7f

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 349
    :goto_b
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_finance_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_17

    .line 351
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 353
    :cond_17
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto/16 :goto_f

    :pswitch_c
    if-eqz p2, :cond_18

    .line 369
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_c

    .line 371
    :cond_18
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xfdf

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 373
    :goto_c
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_event_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_19

    .line 375
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 377
    :cond_19
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto :goto_f

    :pswitch_d
    if-eqz p2, :cond_1a

    .line 429
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    goto :goto_d

    .line 431
    :cond_1a
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    and-int/lit16 p1, p1, 0xffe

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    .line 433
    :goto_d
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "dab_alarm_swich -> dabRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_1b

    .line 435
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putDabAnnouncementInfo(I)V

    .line 437
    :cond_1b
    invoke-static {}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/DabRadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->dabRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/DabRadioStationManager;->setDabAnnouncement(I)V

    goto :goto_f

    :cond_1c
    if-eqz p2, :cond_1d

    .line 468
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    goto :goto_e

    .line 470
    :cond_1d
    iget p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    and-int/lit16 p1, p1, 0xfb

    iput p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    .line 472
    :goto_e
    sget-object p1, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    new-array p2, v2, [Ljava/lang/Object;

    iget v0, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "fm_alternative_frequency_swich -> fmRdsConfig = %2x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRadioSharedPreference:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-eqz p1, :cond_1e

    .line 474
    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/utils/RadioSharedPreference;->putRdsInfo(I)V

    .line 476
    :cond_1e
    invoke-static {}, Lcom/saicmotor/radio/manager/RadioStationManager;->getInstance()Lcom/saicmotor/radio/manager/RadioStationManager;

    move-result-object p1

    iget p2, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->fmRdsConfig:I

    invoke-virtual {p1, p2}, Lcom/saicmotor/radio/manager/RadioStationManager;->setRdsConfig(I)V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080083
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080087
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f08008a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0800ad
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdateSkinEvent(Lcom/saicmotor/radio/model/event/UpdateSkinEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "DABDialogFragment"

    const-string v0, "onUpdateSkinEvent: "

    .line 112
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/saicmotor/radio/view/dialog/RadioRDSSettingsDialog;->refreshButtonSkin(Landroid/view/View;)V

    :cond_0
    return-void
.end method
