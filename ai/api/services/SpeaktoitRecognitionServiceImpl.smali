.class public Lai/api/services/SpeaktoitRecognitionServiceImpl;
.super Lai/api/AIService;
.source "SpeaktoitRecognitionServiceImpl.java"

# interfaces
.implements Lai/api/util/VoiceActivityDetector$SpeechEventsListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;,
        Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final SAMPLE_RATE_IN_HZ:I = 0x3e80

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private final eventsExecutor:Ljava/util/concurrent/ExecutorService;

.field private extras:Lai/api/RequestExtras;

.field private volatile isRecording:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private recognizeTask:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;

.field private final recognizerLock:Ljava/lang/Object;

.field private final vad:Lai/api/util/VoiceActivityDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/api/AIConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lai/api/AIConfiguration;

    .prologue
    .line 81
    invoke-direct {p0, p2, p1}, Lai/api/AIService;-><init>(Lai/api/AIConfiguration;Landroid/content/Context;)V

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->eventsExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Lai/api/util/VoiceActivityDetector;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Lai/api/util/VoiceActivityDetector;-><init>(I)V

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->vad:Lai/api/util/VoiceActivityDetector;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizerLock:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    .line 82
    invoke-direct {p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->init()V

    .line 83
    return-void
.end method

.method static synthetic access$200(Lai/api/services/SpeaktoitRecognitionServiceImpl;)Lai/api/AIConfiguration;
    .locals 1
    .param p0, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->config:Lai/api/AIConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lai/api/services/SpeaktoitRecognitionServiceImpl;)Lai/api/util/VoiceActivityDetector;
    .locals 1
    .param p0, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->vad:Lai/api/util/VoiceActivityDetector;

    return-object v0
.end method

.method static synthetic access$400(Lai/api/services/SpeaktoitRecognitionServiceImpl;F)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;
    .param p1, "x1"    # F

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->onAudioLevelChanged(F)V

    return-void
.end method

.method static synthetic access$500(Lai/api/services/SpeaktoitRecognitionServiceImpl;)Lai/api/AIDataService;
    .locals 1
    .param p0, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->aiDataService:Lai/api/AIDataService;

    return-object v0
.end method

.method static synthetic access$600(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/model/AIResponse;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;
    .param p1, "x1"    # Lai/api/model/AIResponse;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->onResult(Lai/api/model/AIResponse;)V

    return-void
.end method

.method static synthetic access$700(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/model/AIError;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;
    .param p1, "x1"    # Lai/api/model/AIError;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->onError(Lai/api/model/AIError;)V

    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 86
    iget-object v6, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 87
    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 89
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    .line 95
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->vad:Lai/api/util/VoiceActivityDetector;

    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->config:Lai/api/AIConfiguration;

    invoke-virtual {v1}, Lai/api/AIConfiguration;->isVoiceActivityDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lai/api/util/VoiceActivityDetector;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->vad:Lai/api/util/VoiceActivityDetector;

    invoke-virtual {v0, p0}, Lai/api/util/VoiceActivityDetector;->setSpeechListener(Lai/api/util/VoiceActivityDetector$SpeechEventsListener;)V

    .line 98
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 99
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 100
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 101
    monitor-exit v6

    .line 102
    return-void

    .line 101
    .end local v5    # "bufferSize":I
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private playSound(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 8
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 217
    const/4 v7, 0x1

    .line 219
    .local v7, "result":Z
    :try_start_0
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 220
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 221
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 222
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 223
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return v7

    .line 224
    :catch_0
    move-exception v6

    .line 225
    .local v6, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private startRecording(Lai/api/RequestExtras;)V
    .locals 4
    .param p1, "extras"    # Lai/api/RequestExtras;

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->vad:Lai/api/util/VoiceActivityDetector;

    invoke-virtual {v0}, Lai/api/util/VoiceActivityDetector;->reset()V

    .line 146
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 148
    invoke-virtual {p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->onListeningStarted()V

    .line 150
    new-instance v0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;

    new-instance v1, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;

    iget-object v2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    invoke-direct {v1, p0, v2, v3}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;-><init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Landroid/media/AudioRecord;Lai/api/services/SpeaktoitRecognitionServiceImpl$1;)V

    invoke-direct {v0, p0, v1, p1, v3}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;-><init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;Lai/api/RequestExtras;Lai/api/services/SpeaktoitRecognitionServiceImpl$1;)V

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizeTask:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;

    .line 151
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizeTask:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 178
    iget-object v2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_0
    iget-boolean v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    .line 183
    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->config:Lai/api/AIConfiguration;

    invoke-virtual {v1}, Lai/api/AIConfiguration;->getRecognizerCancelSound()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 184
    .local v0, "cancelSound":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->playSound(Landroid/content/res/AssetFileDescriptor;)Z

    .line 188
    .end local v0    # "cancelSound":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizeTask:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizeTask:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->cancel(Z)Z

    .line 191
    :cond_1
    invoke-virtual {p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->onListeningCancelled()V

    .line 192
    monitor-exit v2

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 374
    iget-boolean v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->extras:Lai/api/RequestExtras;

    invoke-direct {p0, v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->startRecording(Lai/api/RequestExtras;)V

    .line 377
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 381
    iget-boolean v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->extras:Lai/api/RequestExtras;

    invoke-direct {p0, v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->startRecording(Lai/api/RequestExtras;)V

    .line 384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSpeechBegin()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onSpeechCancel()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->eventsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lai/api/services/SpeaktoitRecognitionServiceImpl$2;

    invoke-direct {v1, p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl$2;-><init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 252
    return-void
.end method

.method public onSpeechEnd()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->eventsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lai/api/services/SpeaktoitRecognitionServiceImpl$1;

    invoke-direct {v1, p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl$1;-><init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 242
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    .line 202
    :cond_0
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    .line 205
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 206
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->init()V

    .line 214
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lai/api/RequestExtras;

    invoke-direct {v0}, Lai/api/RequestExtras;-><init>()V

    invoke-virtual {p0, v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->startListening(Lai/api/RequestExtras;)V

    .line 107
    return-void
.end method

.method public startListening(Lai/api/RequestExtras;)V
    .locals 6
    .param p1, "requestExtras"    # Lai/api/RequestExtras;

    .prologue
    .line 116
    iget-object v4, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 117
    :try_start_0
    iget-boolean v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    if-nez v3, :cond_3

    .line 119
    invoke-virtual {p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->checkPermissions()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    new-instance v0, Lai/api/model/AIError;

    const-string v3, "RECORD_AUDIO permission is denied. Please request permission from user."

    invoke-direct {v0, v3}, Lai/api/model/AIError;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "aiError":Lai/api/model/AIError;
    invoke-virtual {p0, v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->onError(Lai/api/model/AIError;)V

    .line 122
    monitor-exit v4

    .line 141
    .end local v0    # "aiError":Lai/api/model/AIError;
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    .line 126
    iput-object p1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->extras:Lai/api/RequestExtras;

    .line 128
    iget-object v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->config:Lai/api/AIConfiguration;

    invoke-virtual {v3}, Lai/api/AIConfiguration;->getRecognizerStartSound()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 129
    .local v1, "startSound":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_2

    .line 130
    invoke-direct {p0, v1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->playSound(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v2

    .line 131
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 132
    iget-object v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->extras:Lai/api/RequestExtras;

    invoke-direct {p0, v3}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->startRecording(Lai/api/RequestExtras;)V

    .line 140
    .end local v1    # "startSound":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "success":Z
    :cond_1
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 135
    .restart local v1    # "startSound":Landroid/content/res/AssetFileDescriptor;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->extras:Lai/api/RequestExtras;

    invoke-direct {p0, v3}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->startRecording(Lai/api/RequestExtras;)V

    goto :goto_1

    .line 138
    .end local v1    # "startSound":Landroid/content/res/AssetFileDescriptor;
    :cond_3
    sget-object v3, Lai/api/services/SpeaktoitRecognitionServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "Trying start listening when it already active"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public startListening(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "contexts":Ljava/util/List;, "Ljava/util/List<Lai/api/model/AIContext;>;"
    new-instance v0, Lai/api/RequestExtras;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lai/api/RequestExtras;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->startListening(Lai/api/RequestExtras;)V

    .line 112
    return-void
.end method

.method public stopListening()V
    .locals 5

    .prologue
    .line 156
    iget-object v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->recognizerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 157
    :try_start_0
    iget-boolean v2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 159
    :try_start_1
    iget-object v2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->isRecording:Z

    .line 162
    iget-object v2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl;->config:Lai/api/AIConfiguration;

    invoke-virtual {v2}, Lai/api/AIConfiguration;->getRecognizerStopSound()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 163
    .local v1, "stopSound":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0, v1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->playSound(Landroid/content/res/AssetFileDescriptor;)Z

    .line 167
    :cond_0
    invoke-virtual {p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->onListeningFinished()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v1    # "stopSound":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lai/api/services/SpeaktoitRecognitionServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "Attempt to stop audioRecord when it is stopped"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
