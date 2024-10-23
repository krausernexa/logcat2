.class public Lcom/ubtechinc/utils/SoundVolumesUtils;
.super Ljava/lang/Object;
.source "SoundVolumesUtils.java"


# static fields
.field private static final MAX_VOLUME_LEVEL:I = 0x6

.field private static _instance:Lcom/ubtechinc/utils/SoundVolumesUtils;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mMaxVolume:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeStep:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "SoundVolumesUtils"

    iput-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->TAG:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "audio"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p0}, Lcom/ubtechinc/utils/SoundVolumesUtils;->loadSounds()V

    .line 51
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 52
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mMaxVolume:I

    .line 53
    iget v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mMaxVolume:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iput v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mVolumeStep:F

    .line 54
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ubtechinc/utils/SoundVolumesUtils;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/ubtechinc/utils/SoundVolumesUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ubtechinc/utils/SoundVolumesUtils;->_instance:Lcom/ubtechinc/utils/SoundVolumesUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/ubtechinc/utils/SoundVolumesUtils;

    invoke-direct {v0, p0}, Lcom/ubtechinc/utils/SoundVolumesUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/utils/SoundVolumesUtils;->_instance:Lcom/ubtechinc/utils/SoundVolumesUtils;

    .line 40
    :cond_0
    sget-object v0, Lcom/ubtechinc/utils/SoundVolumesUtils;->_instance:Lcom/ubtechinc/utils/SoundVolumesUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addVolume(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x3

    .line 72
    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 73
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 74
    .local v0, "currentVolume":I
    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 76
    .local v1, "maxVolume":I
    add-int/2addr v0, p1

    .line 77
    if-ge v0, v1, :cond_0

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 80
    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentVolume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/ubtechinc/utils/SoundVolumesUtils;->playSound()V

    .line 83
    return-void

    :cond_0
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method public getVolumeLevel()I
    .locals 4

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "level":I
    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    .line 130
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 131
    .local v0, "currentVolume":I
    int-to-float v2, v0

    iget v3, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mVolumeStep:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 133
    return v1
.end method

.method public loadSounds()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 57
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mContext:Landroid/content/Context;

    sget v4, Lcom/example/alpha2entritylib/R$raw;->media_volume:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mContext:Landroid/content/Context;

    sget v4, Lcom/example/alpha2entritylib/R$raw;->wavefail:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mContext:Landroid/content/Context;

    sget v4, Lcom/example/alpha2entritylib/R$raw;->qrcode:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mContext:Landroid/content/Context;

    sget v4, Lcom/example/alpha2entritylib/R$raw;->app_switch_hint:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mContext:Landroid/content/Context;

    sget v4, Lcom/example/alpha2entritylib/R$raw;->shoot:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public mulVolume(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 95
    .local v0, "currentVolume":I
    sub-int/2addr v0, p1

    .line 96
    if-lez v0, :cond_0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 99
    iget-object v1, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentVolume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/ubtechinc/utils/SoundVolumesUtils;->playSound()V

    .line 106
    return-void

    :cond_0
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public playSound()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 136
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 137
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "i"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 140
    iget-object v0, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 141
    return-void
.end method

.method public setVolume(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 109
    const/4 v1, 0x6

    if-ge v1, p1, :cond_1

    .line 110
    const/4 p1, 0x6

    .line 114
    :cond_0
    :goto_0
    iget v1, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mVolumeStep:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 116
    .local v0, "currentVolume":I
    iget-object v1, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 118
    iget-object v1, p0, Lcom/ubtechinc/utils/SoundVolumesUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume currentVolume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 111
    .end local v0    # "currentVolume":I
    :cond_1
    if-gez p1, :cond_0

    .line 112
    const/4 p1, 0x0

    goto :goto_0
.end method
