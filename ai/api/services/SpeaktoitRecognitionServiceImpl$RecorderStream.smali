.class Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;
.super Ljava/io/InputStream;
.source "SpeaktoitRecognitionServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/services/SpeaktoitRecognitionServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderStream"
.end annotation


# instance fields
.field alignment:F

.field private final audioRecord:Landroid/media/AudioRecord;

.field private bytes:[B

.field private final bytesLock:Ljava/lang/Object;

.field count:F

.field private final dbLevel:F

.field extent:I

.field max:I

.field min:I

.field offset:I

.field final synthetic this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;


# direct methods
.method private constructor <init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Landroid/media/AudioRecord;)V
    .locals 5
    .param p2, "audioRecord"    # Landroid/media/AudioRecord;

    .prologue
    const/4 v4, 0x0

    .line 271
    iput-object p1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 256
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide v2, -0x4056666666666666L    # -0.05

    .line 257
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->dbLevel:F

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytesLock:Ljava/lang/Object;

    .line 264
    iput v4, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->offset:I

    .line 265
    iput v4, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->max:I

    .line 266
    iput v4, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->min:I

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->alignment:F

    .line 268
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->count:F

    .line 272
    iput-object p2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->audioRecord:Landroid/media/AudioRecord;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Landroid/media/AudioRecord;Lai/api/services/SpeaktoitRecognitionServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;
    .param p2, "x1"    # Landroid/media/AudioRecord;
    .param p3, "x2"    # Lai/api/services/SpeaktoitRecognitionServiceImpl$1;

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;-><init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Landroid/media/AudioRecord;)V

    return-void
.end method

.method private normalize([BI)V
    .locals 10
    .param p1, "buffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bytesRead"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 315
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->offset:I

    rsub-int v3, v6, 0x12c0

    .line 316
    .local v3, "remainOffset":I
    if-lt p2, v3, :cond_1

    .line 317
    invoke-static {p1, v3, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 318
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 319
    .local v5, "shorts":Ljava/nio/ShortBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 320
    invoke-virtual {v5, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    .line 321
    .local v4, "sample":S
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->max:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->max:I

    .line 322
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->min:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->min:I

    .line 323
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->count:F

    sub-float/2addr v6, v9

    iget v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->count:F

    div-float/2addr v6, v7

    iget v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->alignment:F

    mul-float/2addr v6, v7

    int-to-float v7, v4

    iget v8, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->count:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->alignment:F

    .line 324
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->count:F

    add-float/2addr v6, v9

    iput v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->count:F

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v4    # "sample":S
    :cond_0
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->max:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->min:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->extent:I

    .line 327
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->dbLevel:F

    const v7, 0x46fffe00    # 32767.0f

    mul-float/2addr v6, v7

    iget v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->extent:I

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 328
    .local v1, "factor":F
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 329
    invoke-virtual {v5, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->alignment:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    float-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "factor":F
    .end local v2    # "i":I
    .end local v5    # "shorts":Ljava/nio/ShortBuffer;
    :cond_1
    iget v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->offset:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->offset:I

    .line 333
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-array v0, v3, [B

    .line 278
    .local v0, "buffer":[B
    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    .line 279
    aget-byte v1, v0, v2

    return v1
.end method

.method public read([BII)I
    .locals 11
    .param p1, "buffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x140

    const/4 v4, 0x0

    .line 284
    iget-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 285
    .local v1, "bytesRead":I
    if-lez v1, :cond_4

    .line 286
    iget-object v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 287
    :try_start_0
    iget-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-static {v5}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->access$200(Lai/api/services/SpeaktoitRecognitionServiceImpl;)Lai/api/AIConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lai/api/AIConfiguration;->isNormalizeInputSound()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    invoke-direct {p0, p1, v1}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->normalize([BI)V

    .line 290
    :cond_0
    iget-object v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    .line 291
    .local v3, "temp":[B
    if-eqz v3, :cond_1

    array-length v4, v3

    .line 292
    .local v4, "tempLength":I
    :cond_1
    add-int v5, v4, v1

    new-array v5, v5, [B

    iput-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    .line 293
    if-lez v4, :cond_2

    .line 294
    const/4 v5, 0x0

    iget-object v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    const/4 v8, 0x0

    invoke-static {v3, v5, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    :cond_2
    const/4 v5, 0x0

    iget-object v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    invoke-static {p1, v5, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :goto_0
    iget-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    array-length v5, v5

    if-lt v5, v10, :cond_3

    .line 299
    const/16 v5, 0x140

    new-array v0, v5, [B

    .line 300
    .local v0, "b":[B
    iget-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x140

    invoke-static {v5, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-static {v5}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->access$300(Lai/api/services/SpeaktoitRecognitionServiceImpl;)Lai/api/util/VoiceActivityDetector;

    move-result-object v5

    const/16 v7, 0x140

    invoke-virtual {v5, v0, v7}, Lai/api/util/VoiceActivityDetector;->processBuffer([BI)V

    .line 303
    iget-object v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    .line 304
    array-length v5, v3

    add-int/lit16 v2, v5, -0x140

    .line 305
    .local v2, "newLength":I
    new-array v5, v2, [B

    iput-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    .line 306
    const/16 v5, 0x140

    iget-object v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->bytes:[B

    const/4 v8, 0x0

    invoke-static {v3, v5, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 309
    .end local v0    # "b":[B
    .end local v2    # "newLength":I
    .end local v3    # "temp":[B
    .end local v4    # "tempLength":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 308
    .restart local v3    # "temp":[B
    .restart local v4    # "tempLength":I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    iget-object v7, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-static {v7}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->access$300(Lai/api/services/SpeaktoitRecognitionServiceImpl;)Lai/api/util/VoiceActivityDetector;

    move-result-object v7

    invoke-virtual {v7}, Lai/api/util/VoiceActivityDetector;->calculateRms()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v5, v7}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->access$400(Lai/api/services/SpeaktoitRecognitionServiceImpl;F)V

    .line 309
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .end local v3    # "temp":[B
    .end local v4    # "tempLength":I
    :cond_4
    if-eqz v1, :cond_5

    .end local v1    # "bytesRead":I
    :goto_1
    return v1

    .restart local v1    # "bytesRead":I
    :cond_5
    const/4 v1, -0x3

    goto :goto_1
.end method
