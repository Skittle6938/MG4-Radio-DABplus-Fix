.class public Lcom/saicmotor/radio/utils/RadioSharedPreference;
.super Ljava/lang/Object;
.source "RadioSharedPreference.java"


# static fields
.field public static final DAB_ANNOUNCEMENT_INFO:Ljava/lang/String; = "DAB_ANNOUNCEMENT_INFO"

.field private static final LOG:Lcom/saicmotor/radio/utils/log/Logger;

.field public static final RDS_CONFIG_INFO:Ljava/lang/String; = "RDS_CONFIG_INFO"

.field private static lock:Ljava/lang/Object;

.field private static radioSharedPreferences:Lcom/saicmotor/radio/utils/RadioSharedPreference;


# instance fields
.field private FILE_NAME:Ljava/lang/String;

.field private dabRdsConfigDefValue:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private rdsRdsInfoDefValue:I

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/saicmotor/radio/utils/log/Logger;

    const-class v1, Lcom/saicmotor/radio/utils/RadioSharedPreference;

    invoke-direct {v0, v1}, Lcom/saicmotor/radio/utils/log/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RADIO_RDS_INFO"

    .line 14
    iput-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->FILE_NAME:Ljava/lang/String;

    const/16 v1, 0xf

    .line 15
    iput v1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->rdsRdsInfoDefValue:I

    const/16 v1, 0x803

    .line 16
    iput v1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->dabRdsConfigDefValue:I

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/saicmotor/radio/utils/RadioSharedPreference;
    .locals 2

    .line 22
    sget-object v0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->radioSharedPreferences:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    new-instance v1, Lcom/saicmotor/radio/utils/RadioSharedPreference;

    invoke-direct {v1, p0}, Lcom/saicmotor/radio/utils/RadioSharedPreference;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/saicmotor/radio/utils/RadioSharedPreference;->radioSharedPreferences:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    .line 25
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 27
    :cond_0
    :goto_0
    sget-object p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->radioSharedPreferences:Lcom/saicmotor/radio/utils/RadioSharedPreference;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public contain(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDabAnnouncementInfo()I
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DAB_ANNOUNCEMENT_INFO"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->dabRdsConfigDefValue:I

    return v0

    .line 66
    :cond_0
    sget-object v0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v2, "--getSharedPreference--"

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->dabRdsConfigDefValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRdsInfo()I
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RDS_CONFIG_INFO"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->rdsRdsInfoDefValue:I

    return v0

    .line 51
    :cond_0
    sget-object v0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->LOG:Lcom/saicmotor/radio/utils/log/Logger;

    const-string v2, "--getSharedPreference--"

    invoke-virtual {v0, v2}, Lcom/saicmotor/radio/utils/log/Logger;->i(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->rdsRdsInfoDefValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public putDabAnnouncementInfo(I)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "DAB_ANNOUNCEMENT_INFO"

    .line 57
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object p1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public putRdsInfo(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "RDS_CONFIG_INFO"

    .line 42
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    iget-object p1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    iget-object p1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getRadioAutoStart()Z
    .locals 3

    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RADIO_AUTO_START"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putRadioAutoStart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "RADIO_AUTO_START"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public getRadioWasPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RADIO_WAS_PLAYING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putRadioWasPlaying(Z)V
    .locals 2

    iget-object v0, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "RADIO_WAS_PLAYING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/saicmotor/radio/utils/RadioSharedPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
