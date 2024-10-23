.class public Lai/api/util/VoiceActivityDetector;
.super Ljava/lang/Object;
.source "VoiceActivityDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/api/util/VoiceActivityDetector$SpeechEventsListener;
    }
.end annotation


# static fields
.field private static final ENERGY_FACTOR:D = 3.1

.field public static final FRAME_SIZE_IN_BYTES:I = 0x140

.field private static final MAX_CZ:I = 0xf

.field private static final MAX_SILENCE_MILLIS:J = 0xdacL

.field private static final MIN_CZ:I = 0x5

.field private static final MIN_SILENCE_MILLIS:J = 0x320L

.field private static final MIN_SPEECH_SEQUENCE_COUNT:I = 0x3

.field public static final NOISE_BYTES:I = 0x12c0

.field private static final NOISE_FRAMES:I = 0xf

.field private static final SEQUENCE_LENGTH_MILLIS:I = 0x1e

.field private static final SILENCE_DIFF_MILLIS:J = 0xa8cL

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private enabled:Z

.field private eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

.field private frameNumber:I

.field private lastActiveTime:J

.field private lastSequenceTime:J

.field private noiseEnergy:D

.field private process:Z

.field private final sampleRate:I

.field private sequenceCounter:I

.field private silenceMillis:J

.field private size:I

.field private speechActive:Z

.field private sum:D

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lai/api/util/VoiceActivityDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/util/VoiceActivityDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "sampleRate"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->noiseEnergy:D

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lai/api/util/VoiceActivityDetector;->lastActiveTime:J

    .line 57
    iput-wide v6, p0, Lai/api/util/VoiceActivityDetector;->lastSequenceTime:J

    .line 62
    iput v2, p0, Lai/api/util/VoiceActivityDetector;->sequenceCounter:I

    .line 67
    iput-wide v6, p0, Lai/api/util/VoiceActivityDetector;->time:J

    .line 71
    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lai/api/util/VoiceActivityDetector;->silenceMillis:J

    .line 73
    iput-boolean v2, p0, Lai/api/util/VoiceActivityDetector;->speechActive:Z

    .line 74
    iput-boolean v3, p0, Lai/api/util/VoiceActivityDetector;->enabled:Z

    .line 75
    iput-boolean v3, p0, Lai/api/util/VoiceActivityDetector;->process:Z

    .line 77
    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->sum:D

    .line 78
    iput v2, p0, Lai/api/util/VoiceActivityDetector;->size:I

    .line 81
    iput p1, p0, Lai/api/util/VoiceActivityDetector;->sampleRate:I

    .line 82
    return-void
.end method

.method private isFrameActive(Ljava/nio/ShortBuffer;)Z
    .locals 18
    .param p1, "frame"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 124
    const/4 v9, 0x0

    .line 125
    .local v9, "lastSign":I
    const/4 v4, 0x0

    .line 126
    .local v4, "czCount":I
    const-wide/16 v6, 0x0

    .line 128
    .local v6, "energy":D
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    .line 129
    .local v5, "frameSize":I
    move-object/from16 v0, p0

    iget v13, v0, Lai/api/util/VoiceActivityDetector;->size:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lai/api/util/VoiceActivityDetector;->size:I

    .line 131
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_2

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    .line 133
    .local v10, "raw":S
    int-to-double v14, v10

    const-wide v16, 0x40dfffc000000000L    # 32767.0

    div-double v2, v14, v16

    .line 134
    .local v2, "amplitude":D
    double-to-float v13, v2

    double-to-float v14, v2

    mul-float/2addr v13, v14

    float-to-double v14, v13

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    add-double/2addr v6, v14

    .line 136
    move-object/from16 v0, p0

    iget-wide v14, v0, Lai/api/util/VoiceActivityDetector;->sum:D

    mul-int v13, v10, v10

    int-to-double v0, v13

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lai/api/util/VoiceActivityDetector;->sum:D

    .line 138
    double-to-float v13, v2

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    const/4 v12, 0x1

    .line 139
    .local v12, "sign":I
    :goto_1
    if-eqz v9, :cond_0

    if-eq v12, v9, :cond_0

    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 142
    :cond_0
    move v9, v12

    .line 131
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 138
    .end local v12    # "sign":I
    :cond_1
    const/4 v12, -0x1

    goto :goto_1

    .line 145
    .end local v2    # "amplitude":D
    .end local v10    # "raw":S
    :cond_2
    const/4 v11, 0x0

    .line 146
    .local v11, "result":Z
    move-object/from16 v0, p0

    iget v13, v0, Lai/api/util/VoiceActivityDetector;->frameNumber:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lai/api/util/VoiceActivityDetector;->frameNumber:I

    const/16 v14, 0xf

    if-ge v13, v14, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-wide v14, v0, Lai/api/util/VoiceActivityDetector;->noiseEnergy:D

    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    div-double v16, v6, v16

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lai/api/util/VoiceActivityDetector;->noiseEnergy:D

    .line 156
    :cond_3
    :goto_2
    return v11

    .line 149
    :cond_4
    const/4 v13, 0x5

    if-lt v4, v13, :cond_3

    const/16 v13, 0xf

    if-gt v4, v13, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-wide v14, v0, Lai/api/util/VoiceActivityDetector;->noiseEnergy:D

    const-wide v16, 0x4008cccccccccccdL    # 3.1

    mul-double v14, v14, v16

    cmpl-double v13, v6, v14

    if-lez v13, :cond_3

    .line 151
    const/4 v11, 0x1

    goto :goto_2
.end method

.method private onSpeechBegin()V
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lai/api/util/VoiceActivityDetector;->TAG:Ljava/lang/String;

    const-string v1, "onSpeechBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/api/util/VoiceActivityDetector;->speechActive:Z

    .line 213
    iget-object v0, p0, Lai/api/util/VoiceActivityDetector;->eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lai/api/util/VoiceActivityDetector;->eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    invoke-interface {v0}, Lai/api/util/VoiceActivityDetector$SpeechEventsListener;->onSpeechBegin()V

    .line 216
    :cond_0
    return-void
.end method

.method private onSpeechCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    sget-object v0, Lai/api/util/VoiceActivityDetector;->TAG:Ljava/lang/String;

    const-string v1, "onSpeechCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-boolean v2, p0, Lai/api/util/VoiceActivityDetector;->speechActive:Z

    .line 201
    iput-boolean v2, p0, Lai/api/util/VoiceActivityDetector;->process:Z

    .line 203
    iget-object v0, p0, Lai/api/util/VoiceActivityDetector;->eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lai/api/util/VoiceActivityDetector;->eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    invoke-interface {v0}, Lai/api/util/VoiceActivityDetector$SpeechEventsListener;->onSpeechCancel()V

    .line 206
    :cond_0
    return-void
.end method

.method private onSpeechEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    sget-object v0, Lai/api/util/VoiceActivityDetector;->TAG:Ljava/lang/String;

    const-string v1, "onSpeechEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean v2, p0, Lai/api/util/VoiceActivityDetector;->speechActive:Z

    .line 188
    iput-boolean v2, p0, Lai/api/util/VoiceActivityDetector;->process:Z

    .line 190
    iget-boolean v0, p0, Lai/api/util/VoiceActivityDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lai/api/util/VoiceActivityDetector;->eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lai/api/util/VoiceActivityDetector;->eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    invoke-interface {v0}, Lai/api/util/VoiceActivityDetector$SpeechEventsListener;->onSpeechEnd()V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateRms()D
    .locals 6

    .prologue
    .line 160
    iget-wide v2, p0, Lai/api/util/VoiceActivityDetector;->sum:D

    iget v4, p0, Lai/api/util/VoiceActivityDetector;->size:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double v0, v2, v4

    .line 161
    .local v0, "rms":D
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lai/api/util/VoiceActivityDetector;->sum:D

    .line 162
    const/4 v2, 0x0

    iput v2, p0, Lai/api/util/VoiceActivityDetector;->size:I

    .line 163
    return-wide v0
.end method

.method public processBuffer([BI)V
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "bytesRead"    # I

    .prologue
    .line 85
    iget-boolean v4, p0, Lai/api/util/VoiceActivityDetector;->process:Z

    if-nez v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v4, 0x0

    invoke-static {p1, v4, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 92
    .local v3, "shorts":Ljava/nio/ShortBuffer;
    invoke-direct {p0, v3}, Lai/api/util/VoiceActivityDetector;->isFrameActive(Ljava/nio/ShortBuffer;)Z

    move-result v0

    .line 94
    .local v0, "active":Z
    div-int/lit8 v2, p2, 0x2

    .line 95
    .local v2, "frameSize":I
    iget v4, p0, Lai/api/util/VoiceActivityDetector;->frameNumber:I

    mul-int/2addr v4, v2

    mul-int/lit16 v4, v4, 0x3e8

    iget v5, p0, Lai/api/util/VoiceActivityDetector;->sampleRate:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->time:J

    .line 97
    if-eqz v0, :cond_5

    .line 98
    iget-wide v4, p0, Lai/api/util/VoiceActivityDetector;->lastActiveTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    iget-wide v4, p0, Lai/api/util/VoiceActivityDetector;->time:J

    iget-wide v6, p0, Lai/api/util/VoiceActivityDetector;->lastActiveTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 99
    iget v4, p0, Lai/api/util/VoiceActivityDetector;->sequenceCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lai/api/util/VoiceActivityDetector;->sequenceCounter:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 100
    iget-boolean v4, p0, Lai/api/util/VoiceActivityDetector;->speechActive:Z

    if-nez v4, :cond_2

    .line 101
    invoke-direct {p0}, Lai/api/util/VoiceActivityDetector;->onSpeechBegin()V

    .line 104
    :cond_2
    iget-wide v4, p0, Lai/api/util/VoiceActivityDetector;->time:J

    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->lastSequenceTime:J

    .line 105
    const-wide/16 v4, 0x320

    iget-wide v6, p0, Lai/api/util/VoiceActivityDetector;->silenceMillis:J

    const-wide/16 v8, 0x2a3

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->silenceMillis:J

    .line 110
    :cond_3
    :goto_1
    iget-wide v4, p0, Lai/api/util/VoiceActivityDetector;->time:J

    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->lastActiveTime:J

    goto :goto_0

    .line 108
    :cond_4
    const/4 v4, 0x1

    iput v4, p0, Lai/api/util/VoiceActivityDetector;->sequenceCounter:I

    goto :goto_1

    .line 112
    :cond_5
    iget-wide v4, p0, Lai/api/util/VoiceActivityDetector;->time:J

    iget-wide v6, p0, Lai/api/util/VoiceActivityDetector;->lastSequenceTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lai/api/util/VoiceActivityDetector;->silenceMillis:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 113
    iget-boolean v4, p0, Lai/api/util/VoiceActivityDetector;->speechActive:Z

    if-eqz v4, :cond_6

    .line 114
    invoke-direct {p0}, Lai/api/util/VoiceActivityDetector;->onSpeechEnd()V

    goto :goto_0

    .line 116
    :cond_6
    invoke-direct {p0}, Lai/api/util/VoiceActivityDetector;->onSpeechCancel()V

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 167
    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->time:J

    .line 168
    iput v2, p0, Lai/api/util/VoiceActivityDetector;->frameNumber:I

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lai/api/util/VoiceActivityDetector;->noiseEnergy:D

    .line 171
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lai/api/util/VoiceActivityDetector;->lastActiveTime:J

    .line 172
    iput-wide v4, p0, Lai/api/util/VoiceActivityDetector;->lastSequenceTime:J

    .line 173
    iput v2, p0, Lai/api/util/VoiceActivityDetector;->sequenceCounter:I

    .line 174
    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lai/api/util/VoiceActivityDetector;->silenceMillis:J

    .line 176
    iput-boolean v2, p0, Lai/api/util/VoiceActivityDetector;->speechActive:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/api/util/VoiceActivityDetector;->process:Z

    .line 178
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lai/api/util/VoiceActivityDetector;->enabled:Z

    .line 226
    return-void
.end method

.method public setSpeechListener(Lai/api/util/VoiceActivityDetector$SpeechEventsListener;)V
    .locals 0
    .param p1, "eventsListener"    # Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    .prologue
    .line 181
    iput-object p1, p0, Lai/api/util/VoiceActivityDetector;->eventsListener:Lai/api/util/VoiceActivityDetector$SpeechEventsListener;

    .line 182
    return-void
.end method
