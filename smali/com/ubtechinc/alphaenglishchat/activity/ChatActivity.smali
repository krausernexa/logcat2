.class public Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
.super Landroid/app/Activity;
.source "ChatActivity.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishUnderstandListener;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;
.implements Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishOfflineUnderstandListener;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;,
        Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;
    }
.end annotation


# static fields
.field public static final APP_EXIT:Ljava/lang/String; = "com.ubtechinc.closeapp"

.field private static final APP_PACKAGE_NAME:Ljava/lang/String; = "com.ubtechinc.alphaenglishchat"

.field private static final HANDLER_START_ACTION:I = 0x1

.field private static final HANDLER_START_TTS:I = 0x0

.field public static final NOTIFY_LOGIN:Ljava/lang/String; = "com.ubtechinc.notify.login"

.field private static final NUANCE_ACTION_STOP_PROCESS:I = 0x3

.field private static final NUANCE_ASR_PROCESS:I = 0x2

.field private static final NUANCE_MUSIC_STOP_PROCESS:I = 0x5

.field private static final NUANCE_OFFLINE_PROCESS:I = 0x1

.field private static final NUANCE_ONLINE_PROCESS:I = 0x0

.field private static final NUANCE_TTS_STOP_PROCESS:I = 0x4

.field private static final REQUEST_CODE:I = 0x539

.field public static final SERVER_REQUEST_LANGUAGE_EN:Ljava/lang/String; = "en"

.field private static final SPOTIFY_LOGIN_INFO:Ljava/lang/String; = "{\"models\" : [ {\"item\" : [ {\"editText\" : \"0\",\"id\" : \"0\",\"textView\" : \"Have Login\"}, {\"editText\" : \"0\",\"id\" : \"1\",\"textView\" : \"Token\"}, {\"editText\" : \"0\",\"id\" : \"2\",\"textView\" : \"Token expire\"} ],\"marginTop\" : \"1\"} ],\"version\" : \"1.0.0.0\"}"

.field private static final TAG:Ljava/lang/String; = "ChatActivity"

.field private static final TTSHINT_ASR_TIMEOUT:Ljava/lang/String; = "asr_timeout"

.field private static final TTSHINT_WAKEUP:Ljava/lang/String; = "wakeup"

.field private static final TTS_DELAY_TIME:I = 0x3e8

.field public static mAlphaActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mAlphaDanceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mAlphaStoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ResultConcepts:Ljava/lang/String;

.field private actionNameNow:Ljava/lang/String;

.field private apiAiUnderstandText:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

.field private assetMgr:Landroid/content/res/AssetManager;

.field private domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

.field private flag:Z

.field private hasLogin:Z

.field private intentConceptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;",
            ">;"
        }
    .end annotation
.end field

.field private intentConceptLoad:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

.field private isNeedWolfram:Z

.field private isParallel:Z

.field private isServiceActionNow:Z

.field private isServiceTTSNow:Z

.field private isTakePhotoIng:Z

.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExitBroadcast:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;

.field private mHandler:Landroid/os/Handler;

.field private mLastAngle:I

.field private mLastAngleByte:B

.field private mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mNuanceHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;

.field private mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

.field private mRobotState:I

.field private mRobotUUID:Ljava/lang/String;

.field private mSentence:Ljava/lang/String;

.field private mSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

.field private mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

.field private mTimer:Ljava/util/Timer;

.field private mUbtAPIHandler:Landroid/os/Handler;

.field private mVoiceName:Ljava/lang/String;

.field private mWakeupAngle:I

.field private parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

.field private recogResult:Ljava/lang/String;

.field private resultConcept:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resultConfidence:F

.field private resultIntent:Ljava/lang/String;

.field private selfIntroductionDomain:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

.field private shouldRestartASR:Z

.field public ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

.field private weatherConcept:[Ljava/lang/String;

.field private weatherIntent:[Ljava/lang/String;

.field private willTTS:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    iput-object p0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    .line 136
    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->assetMgr:Landroid/content/res/AssetManager;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->recogResult:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ResultConcepts:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->resultIntent:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->resultConfidence:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->resultConcept:Ljava/util/ArrayList;

    .line 153
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->flag:Z

    .line 160
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->willTTS:Z

    .line 162
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->hasLogin:Z

    .line 163
    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSentence:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->actionNameNow:Ljava/lang/String;

    .line 167
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isServiceActionNow:Z

    .line 168
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isServiceTTSNow:Z

    .line 169
    iput-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->shouldRestartASR:Z

    .line 170
    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    .line 202
    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngle:I

    .line 204
    iput-byte v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngleByte:B

    .line 207
    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mWakeupAngle:I

    .line 209
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isTakePhotoIng:Z

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotUUID:Ljava/lang/String;

    .line 213
    iput-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isParallel:Z

    .line 215
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isNeedWolfram:Z

    .line 219
    const-string v0, "samantha"

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mVoiceName:Ljava/lang/String;

    .line 535
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    .line 871
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 1127
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$6;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mNuanceHandler:Landroid/os/Handler;

    .line 1358
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mUbtAPIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->initFunction()V

    return-void
.end method

.method static synthetic access$100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isServiceTTSNow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isServiceTTSNow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    return p1
.end method

.method static synthetic access$1202(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isServiceActionNow:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotUUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;B)B
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # B

    .prologue
    .line 101
    iput-byte p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngleByte:B

    return p1
.end method

.method static synthetic access$1500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;B)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # B

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->processSpeechAngle(B)V

    return-void
.end method

.method static synthetic access$1602(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mWakeupAngle:I

    return p1
.end method

.method static synthetic access$1700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngle:I

    return v0
.end method

.method static synthetic access$1800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendRamdonSelfIntroduction()V

    return-void
.end method

.method static synthetic access$1902(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->flag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->intentConceptLoad:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult()V

    return-void
.end method

.method static synthetic access$2200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mVoiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getTokenExpire(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->initSpofity()V

    return-void
.end method

.method static synthetic access$2700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mUbtAPIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSentence:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSentence:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->intentConceptList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isParallel:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->apiAiUnderstandText:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->uploadUnknownQuestion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3302(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->recogResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->requestContentServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->requestAliceServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->actionNameNow:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->actionNameNow:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->stopProcess()V

    return-void
.end method

.method static synthetic access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->resetStateParameter()V

    return-void
.end method

.method static synthetic access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    return-object v0
.end method

.method static synthetic access$802(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p1, "x1"    # Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    return-object p1
.end method

.method private checkSpotifyToken()V
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getConfig()V

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 10
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 345
    new-instance v3, Lcom/ubtechinc/developer/DeveloperAppData;

    invoke-direct {v3}, Lcom/ubtechinc/developer/DeveloperAppData;-><init>()V

    .line 346
    .local v3, "developer":Lcom/ubtechinc/developer/DeveloperAppData;
    const/4 v1, 0x0

    .line 348
    .local v1, "byss":[B
    :try_start_0
    invoke-static {p1}, Lorg/msgpack/MessagePack;->pack(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 352
    :goto_0
    array-length v6, v1

    .line 353
    .local v6, "length":I
    add-int/lit8 v7, v6, -0x3

    new-array v2, v7, [B

    .line 354
    .local v2, "byss2":[B
    const/4 v7, 0x3

    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x3

    invoke-static {v1, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/ubtechinc/developer/DeveloperAppData;->setCmd(I)V

    .line 356
    invoke-virtual {v3, v2}, Lcom/ubtechinc/developer/DeveloperAppData;->setDatas([B)V

    .line 357
    const-string v7, "com.ubtechinc.alphaenglishchat"

    invoke-virtual {v3, v7}, Lcom/ubtechinc/developer/DeveloperAppData;->setPackageName(Ljava/lang/String;)V

    .line 359
    new-instance v5, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/ubtechinc/developer/DeveloperAppData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.ubtechinc.config.save"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v5, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "appdata"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 363
    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 364
    return-object v5

    .line 349
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "byss2":[B
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "length":I
    :catch_0
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getConfig()V
    .locals 6

    .prologue
    .line 319
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->readConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "configInfo":[Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$3;

    invoke-direct {v3, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$3;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v2, "{\"models\" : [ {\"item\" : [ {\"editText\" : \"0\",\"id\" : \"0\",\"textView\" : \"Have Login\"}, {\"editText\" : \"0\",\"id\" : \"1\",\"textView\" : \"Token\"}, {\"editText\" : \"0\",\"id\" : \"2\",\"textView\" : \"Token expire\"} ],\"marginTop\" : \"1\"} ],\"version\" : \"1.0.0.0\"}"

    invoke-direct {p0, v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 340
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v2, v1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->writeConfig(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "content":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 722
    const-string v4, "{"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 723
    .local v3, "start":I
    const-string v4, "}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 724
    .local v1, "end":I
    if-le v1, v3, :cond_0

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v2, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .end local v1    # "end":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "start":I
    :cond_0
    return-object v0
.end method

.method private getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1427
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1428
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1430
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 1431
    :cond_0
    const/4 v2, 0x0

    .line 1442
    :goto_0
    return-object v2

    .line 1434
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1435
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1436
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1437
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1441
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 613
    const/4 v3, 0x0

    .line 614
    .local v3, "token":Ljava/lang/String;
    const-string v4, "Have Login"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 615
    .local v2, "start":I
    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 616
    const-string v4, "editText"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 617
    const-string v4, ","

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 618
    .local v0, "end":I
    const-string v4, ":"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 619
    const-string v4, "\""

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v1, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    if-ge v2, v0, :cond_0

    .line 623
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .end local v0    # "end":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-object v3
.end method

.method private getTokenExpire(Ljava/lang/String;)J
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 630
    const-wide/16 v2, 0x0

    .line 631
    .local v2, "expire":J
    const-string v6, "Token"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 632
    .local v4, "start":I
    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    .line 633
    const-string v6, "editText"

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 634
    const-string v6, ","

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 635
    .local v0, "end":I
    const-string v6, ":"

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 636
    const-string v6, "\""

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v1, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    if-ge v4, v0, :cond_0

    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 644
    .end local v0    # "end":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method private getWillTTS()Z
    .locals 2

    .prologue
    .line 848
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 849
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->willTTS:Z

    .line 850
    .local v0, "tts":Z
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 851
    return v0
.end method

.method private initFunction()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    sget-object v1, Lcom/ubtechinc/contant/CustomLanguage;->UNITED_STATES_ENGLISH:Lcom/ubtechinc/contant/CustomLanguage;

    invoke-virtual {v0, p0, p0, v1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->initSpeechApi(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;Lcom/ubtechinc/contant/CustomLanguage;)Z

    .line 273
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0, p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->initActionApi(Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;)Z

    .line 274
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->initChestSeiralApi()Z

    .line 275
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->initHeaderSerialApi()Z

    .line 276
    return-void
.end method

.method private initSpofity()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 648
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->init()Z

    move-result v1

    .line 649
    .local v1, "isReady":Z
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!! isReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-eqz v1, :cond_1

    .line 651
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->prepare()V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->readConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "json":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-le v3, v6, :cond_2

    .line 655
    aget-object v3, v2, v6

    invoke-direct {p0, v3}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->refreshConfig(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v3, v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->writeConfig(Landroid/content/Intent;)V

    .line 659
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->hasLogin:Z

    if-eqz v3, :cond_0

    .line 660
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->requestToken()V

    goto :goto_0
.end method

.method private loadConcept()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->assetMgr:Landroid/content/res/AssetManager;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->intentConceptList:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->assetMgr:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->intentConceptLoad:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;

    .line 283
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$2;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 307
    return-void
.end method

.method private parseLocalResult()V
    .locals 4

    .prologue
    .line 783
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->recogResult:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 785
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->intentConceptList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;-><init>(Ljava/util/ArrayList;)V

    .line 786
    .local v1, "customJsonParse":Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseJson(Ljava/lang/String;I)V

    .line 787
    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->getParseResult()Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 789
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 791
    .end local v1    # "customJsonParse":Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;
    :cond_0
    return-void
.end method

.method private parseResult()V
    .locals 6

    .prologue
    .line 690
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->recogResult:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 700
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->intentConceptList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;-><init>(Ljava/util/ArrayList;)V

    .line 701
    .local v1, "nluResultParse":Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;
    invoke-virtual {v1, v0}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseJson(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->getParseResult()Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 703
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSentence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setSentence(Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Joke"

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    const-string v2, "ChatActivity"

    const-string v3, "!!!! NLU no result"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSentence:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->requestContentServer(Ljava/lang/String;)V

    .line 717
    .end local v1    # "nluResultParse":Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;
    :goto_0
    return-void

    .line 710
    .restart local v1    # "nluResultParse":Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    goto :goto_0

    .line 714
    .end local v1    # "nluResultParse":Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    const-string v3, "en_us"

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->recogResult:Ljava/lang/String;

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_startTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    goto :goto_0
.end method

.method private processSpeechAngle(B)V
    .locals 5
    .param p1, "angle"    # B

    .prologue
    .line 1204
    move v1, p1

    .line 1205
    .local v1, "angleINT":I
    shl-int/lit8 v0, v1, 0x8

    .line 1206
    .local v0, "angleHight":I
    if-gez v1, :cond_0

    .line 1207
    add-int/lit16 v1, v1, 0x100

    .line 1209
    :cond_0
    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngle:I

    .line 1210
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSpeechAngle mLastAngle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSpeechAngle mLastAngle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isTakePhotoIng:Z

    if-nez v2, :cond_1

    .line 1213
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!!! processSpeechAngle angleINT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    const/16 v3, 0x13

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v1, v4}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->chest_SendOneFreeAngle(BIS)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1216
    :cond_1
    return-void
.end method

.method private refreshConfig(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 669
    .local v3, "value":Ljava/lang/String;
    const-string v4, "editText"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 670
    .local v2, "start":I
    const-string v4, ":"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 671
    const-string v4, "\""

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 672
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 673
    if-lez v2, :cond_0

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .local v1, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 681
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 682
    iput-boolean v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->hasLogin:Z

    .line 686
    :cond_1
    :goto_0
    return-object v0

    .line 683
    :cond_2
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 684
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->hasLogin:Z

    goto :goto_0
.end method

.method private requestAliceServer(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1220
    new-instance v0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;

    invoke-direct {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;-><init>()V

    .line 1221
    .local v0, "request":Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;
    invoke-virtual {v0, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;->setContent(Ljava/lang/String;)V

    .line 1222
    const-string v2, "en"

    invoke-virtual {v0, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;->setSystemLanguage(Ljava/lang/String;)V

    .line 1223
    new-instance v1, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$7;

    invoke-direct {v3, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$7;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V

    .line 1235
    .local v1, "userAction":Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;
    invoke-virtual {v1, v0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->setParamerObj(Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;)V

    .line 1236
    const/16 v2, 0x4e2b

    const-string v3, "alice_question"

    invoke-virtual {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->doRequest(ILjava/lang/String;)V

    .line 1238
    return-void
.end method

.method private requestContentServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isParallel:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isNeedWolfram:Z

    if-eqz v0, :cond_1

    .line 1314
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->apiAiUnderstandText:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    invoke-virtual {v0, p1}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->understandText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetStateParameter()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->actionNameNow:Ljava/lang/String;

    .line 223
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    .line 224
    return-void
.end method

.method private sendNuanceMessage(ILjava/lang/String;)V
    .locals 2
    .param p1, "cmdID"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mNuanceHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1198
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1199
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1200
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mNuanceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1201
    return-void
.end method

.method private sendRamdonSelfIntroduction()V
    .locals 3

    .prologue
    .line 1295
    const-string v0, "ChatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRamdonSelfIntroduction mRobotState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    .line 1297
    const-string v0, "ChatActivity"

    const-string v1, "sendRamdonSelfIntroduction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    .line 1299
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 1300
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const-string v1, "Special_Event"

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const-string v1, "Random_Self_Introduction"

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 1305
    :cond_0
    return-void
.end method

.method private setWillTTS(Z)V
    .locals 1
    .param p1, "tts"    # Z

    .prologue
    .line 841
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 842
    iput-boolean p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->willTTS:Z

    .line 843
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 844
    return-void
.end method

.method private stopMusicService()V
    .locals 4

    .prologue
    .line 1419
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1420
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1421
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1422
    .local v0, "eintent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1423
    return-void
.end method

.method private stopProcess()V
    .locals 3

    .prologue
    .line 1402
    iget-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isNeedWolfram:Z

    if-eqz v1, :cond_0

    .line 1404
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->getWolframUtilInstance()Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;

    move-result-object v0

    .line 1405
    .local v0, "wolframUtil":Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->cancelQuery()V

    .line 1407
    .end local v0    # "wolframUtil":Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;
    :cond_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->apiAiUnderstandText:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->cancel()V

    .line 1409
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    if-eqz v1, :cond_1

    .line 1410
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->interrupt()V

    .line 1413
    :cond_1
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v1, v2}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->getDaemonDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->cancel()V

    .line 1415
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->stopMusicService()V

    .line 1416
    return-void
.end method

.method private uploadUnknownQuestion(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1321
    const-string v2, "ChatActivity"

    const-string v3, "uploadUnknownQuestion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    new-instance v0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadUnknownQuestionRequest;

    invoke-direct {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadUnknownQuestionRequest;-><init>()V

    .line 1323
    .local v0, "request":Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadUnknownQuestionRequest;
    invoke-virtual {v0, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadUnknownQuestionRequest;->setUploadContext(Ljava/lang/String;)V

    .line 1324
    const-string v2, "en"

    invoke-virtual {v0, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadUnknownQuestionRequest;->setLanguageVersion(Ljava/lang/String;)V

    .line 1325
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotUUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadUnknownQuestionRequest;->setRobotSeq(Ljava/lang/String;)V

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/util/AppUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadUnknownQuestionRequest;->setAppVersion(Ljava/lang/String;)V

    .line 1327
    new-instance v1, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$8;

    invoke-direct {v3, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$8;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V

    .line 1338
    .local v1, "userAction":Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;
    invoke-virtual {v1, v0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->setParamerObj(Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;)V

    .line 1339
    const/16 v2, 0x4e2c

    const-string v3, "system/addDna"

    invoke-virtual {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->doRequest(ILjava/lang/String;)V

    .line 1340
    return-void
.end method

.method private whetherIsDanceStory(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, "actionName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1095
    const/4 v3, 0x0

    .line 1124
    :goto_0
    return-object v3

    .line 1097
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1098
    sget-object v3, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaStoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1099
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1100
    .local v2, "newItem":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1101
    move-object v0, v1

    .line 1105
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "newItem":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_4

    .line 1106
    sget-object v3, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaDanceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1107
    .restart local v1    # "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1108
    .restart local v2    # "newItem":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1109
    move-object v0, v1

    .line 1114
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "newItem":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_6

    .line 1115
    sget-object v3, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaActionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1116
    .restart local v1    # "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1117
    .restart local v2    # "newItem":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1118
    move-object v0, v1

    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "newItem":Ljava/lang/String;
    :cond_6
    move-object v3, v0

    .line 1124
    goto :goto_0
.end method


# virtual methods
.method public changeSartCamera()V
    .locals 4

    .prologue
    .line 1344
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ubt.alpha2.app.manager"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1346
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "appevent"

    const-string v3, "start"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v2, "packageName"

    const-string v3, "com.ubtech.smartcamera"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v2, "name"

    const-string v3, "\u4e50\u62cd"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v2, "clientIP"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v2, "srcApp"

    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v2, "angle"

    iget-byte v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngleByte:B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1352
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1353
    invoke-virtual {p0, v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1354
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 244
    const-string v0, "EC5C3357DA64579C605CE7DB9428649E"

    .line 246
    .local v0, "appkey":Ljava/lang/String;
    new-instance v1, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    new-instance v2, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .line 264
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->loadConcept()V

    .line 265
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getSpotifyInstance(Landroid/content/Context;Landroid/app/Activity;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .line 266
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->checkSpotifyToken()V

    .line 267
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v1, v2}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->getSelfIntroductionDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->selfIntroductionDomain:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    .line 269
    return-void
.end method

.method public initOver()V
    .locals 4

    .prologue
    .line 493
    const-string v2, "ChatActivity"

    const-string v3, "initOver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 495
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.ubtechinc.closeapp"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v2, "com.ubtechinc.robot_uuid.info"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.ubtechinc.config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.ubtechinc.config.save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.ubtechinc.button.read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.ubtechinc.button.click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v2, "com.ubtechinc.services.stoptts"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v2, "com.ubtechinc.services.SPEECH_DIRECTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v2, "com.ubtechinc.robot.tts_hint_wakeup"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v2, "clientIP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    new-instance v2, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExitBroadcast:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;

    .line 507
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExitBroadcast:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;

    invoke-virtual {p0, v2, v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    const-string v3, "en_us"

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_setRecognizedLanguage(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 512
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_initGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 514
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->requestRobotUUID()V

    .line 516
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->getChatPreferenceInstance(Landroid/content/Context;)Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    move-result-object v2

    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    .line 517
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->checkWhetherIsFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 520
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSharePreference:Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alphaenglishchat/storage/SharePreference;->setIsFirst(Z)V

    .line 523
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 524
    return-void
.end method

.method public onActionStop(Ljava/lang/String;)V
    .locals 3
    .param p1, "strActionFileName"    # Ljava/lang/String;

    .prologue
    .line 763
    const-string v0, "ChatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strActionFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    .line 765
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyActionState(I)V

    .line 766
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    .line 768
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 735
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 738
    const/16 v1, 0x539

    if-ne p1, v1, :cond_0

    .line 739
    invoke-static {p2, p3}, Lcom/spotify/sdk/android/authentication/AuthenticationClient;->getResponse(ILandroid/content/Intent;)Lcom/spotify/sdk/android/authentication/AuthenticationResponse;

    move-result-object v0

    .line 740
    .local v0, "response":Lcom/spotify/sdk/android/authentication/AuthenticationResponse;
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$10;->$SwitchMap$com$spotify$sdk$android$authentication$AuthenticationResponse$Type:[I

    invoke-virtual {v0}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse;->getType()Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 755
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! Auth result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse;->getType()Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v0    # "response":Lcom/spotify/sdk/android/authentication/AuthenticationResponse;
    :cond_0
    :goto_0
    return-void

    .line 743
    .restart local v0    # "response":Lcom/spotify/sdk/android/authentication/AuthenticationResponse;
    :pswitch_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! Got token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v0}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse;->getExpiresIn()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->saveToken(Ljava/lang/String;Ljava/lang/String;J)V

    .line 745
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->prepare()V

    goto :goto_0

    .line 750
    :pswitch_1
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! Auth error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/sdk/android/authentication/AuthenticationResponse;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAlpha2EnglishOfflineUnderStandResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "strResult"    # Ljava/lang/String;

    .prologue
    .line 773
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    .line 774
    return-void
.end method

.method public onAlpha2EnglishUnderStandResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "strResult"    # Ljava/lang/String;

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    .line 780
    return-void
.end method

.method public onApiAiUnderstandText_callBack(Lai/api/model/AIResponse;)V
    .locals 10
    .param p1, "aiResponse"    # Lai/api/model/AIResponse;

    .prologue
    const/4 v9, 0x1

    .line 966
    const-string v6, "ChatActivity"

    const-string v7, "!!!! onApiAiUnderstandText_callBack"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    if-eqz p1, :cond_4

    .line 968
    const/4 v4, 0x0

    .line 970
    .local v4, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lai/api/model/AIResponse;->getResult()Lai/api/model/Result;

    move-result-object v6

    invoke-virtual {v6}, Lai/api/model/Result;->getFulfillment()Lai/api/model/Fulfillment;

    move-result-object v6

    invoke-virtual {v6}, Lai/api/model/Fulfillment;->getSpeech()Ljava/lang/String;

    move-result-object v4

    .line 971
    const-string v6, "ChatActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!! apiai text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_0
    invoke-virtual {p1}, Lai/api/model/AIResponse;->getResult()Lai/api/model/Result;

    move-result-object v6

    invoke-virtual {v6}, Lai/api/model/Result;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "apiaiAction":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_2

    const-string v6, "smalltalk.unknown"

    .line 978
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "smalltalk.agent"

    .line 979
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 980
    :cond_0
    iget-boolean v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isParallel:Z

    if-nez v6, :cond_1

    .line 981
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1009
    .end local v0    # "apiaiAction":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 972
    :catch_0
    move-exception v1

    .line 973
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 993
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "apiaiAction":Ljava/lang/String;
    :cond_2
    iget-boolean v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isParallel:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isNeedWolfram:Z

    if-eqz v6, :cond_3

    .line 995
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->getWolframUtilInstance()Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;

    move-result-object v5

    .line 996
    .local v5, "wolframUtil":Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->cancelQuery()V

    .line 998
    .end local v5    # "wolframUtil":Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;
    :cond_3
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v6, v4, v9}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1001
    .end local v0    # "apiaiAction":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 1002
    .restart local v4    # "text":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->selfIntroductionDomain:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->startIntroduce()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1003
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1004
    .local v2, "random":Ljava/util/Random;
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1005
    .local v3, "select":I
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f080056

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1006
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v6, v4, v9}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->setContentView(I)V

    .line 230
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mEditText:Landroid/widget/EditText;

    .line 231
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mButton:Landroid/widget/Button;

    .line 232
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mPackageName:Ljava/lang/String;

    .line 233
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->setList(Landroid/app/Activity;)V

    .line 234
    iput-object p0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    .line 235
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mTimer:Ljava/util/Timer;

    .line 236
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->init()V

    .line 237
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 238
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;-><init>(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->apiAiUnderstandText:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    .line 239
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 241
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 946
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 947
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExitBroadcast:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExitBroadcast:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 949
    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mExitBroadcast:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->action_StopAction()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 954
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_StopTTS()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 955
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_stopGrammaer()Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 956
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->releaseApi()V

    .line 957
    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .line 959
    :cond_1
    const-string v0, "ChatActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 961
    return-void
.end method

.method public onEventMainThread(Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 1033
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;->getmCmdID()I

    move-result v1

    .line 1034
    .local v1, "cmdID":I
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmdID ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    if-nez v1, :cond_4

    move-object v4, p1

    .line 1036
    check-cast v4, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;

    .line 1037
    .local v4, "noResultEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;
    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;->getmObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1038
    .local v7, "text":Ljava/lang/String;
    const-string v8, "ok."

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ok"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1039
    :cond_0
    const-string v8, ""

    const-string v9, "say ok"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 1090
    .end local v4    # "noResultEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;
    .end local v7    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1043
    .restart local v4    # "noResultEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->whetherIsDanceStory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "actionName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1045
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v8, v0}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_Action(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_3
    const-string v8, "\\u0027"

    const-string v9, "\'"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1049
    invoke-direct {p0, v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->requestContentServer(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v4    # "noResultEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x2

    if-ne v1, v8, :cond_7

    move-object v2, p1

    .line 1053
    check-cast v2, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;

    .line 1054
    .local v2, "musicEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->getmState()I

    move-result v8

    if-nez v8, :cond_6

    .line 1055
    iget v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    .line 1061
    :cond_5
    :goto_1
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRobotState ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1056
    :cond_6
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->getmState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1057
    iget v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v8, v8, -0x5

    iput v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    .line 1058
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    goto :goto_1

    .line 1062
    .end local v2    # "musicEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;
    :cond_7
    const/4 v8, 0x5

    if-ne v1, v8, :cond_b

    move-object v5, p1

    .line 1063
    check-cast v5, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;

    .line 1064
    .local v5, "photoEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;->getmState()I

    move-result v6

    .line 1065
    .local v6, "photoState":I
    if-nez v6, :cond_8

    .line 1066
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isTakePhotoIng:Z

    .line 1067
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mContext:Landroid/content/Context;

    const v10, 0x7f080052

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1068
    :cond_8
    const/4 v8, 0x1

    if-ne v6, v8, :cond_9

    .line 1069
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isTakePhotoIng:Z

    goto :goto_0

    .line 1070
    :cond_9
    const/4 v8, 0x2

    if-ne v6, v8, :cond_a

    .line 1071
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isTakePhotoIng:Z

    .line 1072
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->changeSartCamera()V

    goto/16 :goto_0

    .line 1073
    :cond_a
    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 1074
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->isTakePhotoIng:Z

    goto/16 :goto_0

    .line 1076
    .end local v5    # "photoEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;
    .end local v6    # "photoState":I
    :cond_b
    const/4 v8, 0x6

    if-ne v1, v8, :cond_1

    move-object v2, p1

    .line 1077
    check-cast v2, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;

    .line 1078
    .restart local v2    # "musicEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->getmState()I

    move-result v3

    .line 1079
    .local v3, "musicState":I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    .line 1080
    const-string v8, "ChatActivity"

    const-string v9, "MusicEvent.STATE_IDLE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v8, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    iput-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 1082
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const-string v9, "Special_Event"

    invoke-virtual {v8, v9}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 1083
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const-string v9, "Hint_Music_Stop"

    invoke-virtual {v8, v9}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 1085
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->domainManager:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v8, v9}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    goto/16 :goto_0

    .line 1086
    :cond_c
    if-nez v3, :cond_1

    goto/16 :goto_0
.end method

.method public onGetActionList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 530
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 531
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 926
    const-string v0, ""

    const-string v1, "!!!!!! onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 931
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 935
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 936
    const-string v0, ""

    const-string v1, "!!!!!! onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-void
.end method

.method public onServerCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 796
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    .line 838
    return-void
.end method

.method public onServerPlayEnd(Z)V
    .locals 2
    .param p1, "isEnd"    # Z

    .prologue
    .line 857
    const-string v0, "ChatActivity"

    const-string v1, "onServerPlayEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobotState:I

    .line 859
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyTTSState(I)V

    .line 860
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    .line 866
    return-void
.end method

.method public onSpeechGrammarError(I)V
    .locals 0
    .param p1, "nErrorCode"    # I

    .prologue
    .line 1292
    return-void
.end method

.method public onSpeechGrammarResult(ILjava/lang/String;)V
    .locals 7
    .param p1, "speechResultType"    # I
    .param p2, "strResult"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1252
    const-string v1, "ChatActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! onSpeechGrammarResult strResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mWakeupAngle:I

    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngle:I

    sub-int v0, v1, v2

    .line 1254
    .local v0, "deltaAngle":I
    const-string v1, "ChatActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! mWakeupAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mWakeupAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const-string v1, "ChatActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! mLastAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mLastAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v1, "ChatActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! deltaAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/16 v1, -0xf

    if-le v0, v1, :cond_0

    .line 1258
    packed-switch p1, :pswitch_data_0

    .line 1287
    :goto_0
    return-void

    .line 1260
    :pswitch_0
    invoke-direct {p0, v5, p2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 1263
    :pswitch_1
    invoke-direct {p0, v6, p2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 1266
    :pswitch_2
    invoke-direct {p0, v4, p2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 1273
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1275
    :pswitch_3
    invoke-direct {p0, v5, p2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 1278
    :pswitch_4
    invoke-direct {p0, v6, p2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 1281
    :pswitch_5
    invoke-direct {p0, v4, p2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendNuanceMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 1258
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1273
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 480
    new-instance v0, Lcom/ubtechinc/developer/DeveloperAppData;

    invoke-direct {v0}, Lcom/ubtechinc/developer/DeveloperAppData;-><init>()V

    .line 481
    .local v0, "appConfig":Lcom/ubtechinc/developer/DeveloperAppData;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ubtechinc/developer/DeveloperAppData;->setDatas([B)V

    .line 482
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.ubtechinc.config.back"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "appconfig"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 487
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    return-void
.end method

.method public speechGrammarInitCallback(Ljava/lang/String;I)V
    .locals 2
    .param p1, "grammarID"    # Ljava/lang/String;
    .param p2, "nErrorCode"    # I

    .prologue
    .line 1245
    const-string v0, "ChatActivity"

    const-string v1, "!!! speechGrammarInitCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mRobot:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-virtual {v0, p0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speeh_startGrammar(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1248
    return-void
.end method
