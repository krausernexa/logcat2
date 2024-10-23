.class public Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "DaemonDomain.java"


# static fields
.field public static final ACTION_ASR:Ljava/lang/String; = "action_asr"

.field private static final CHAT_TIME:I = 0xea60

.field public static final MUSIC_SERVICE:Ljava/lang/String; = "com.ubtechinc.alphaenglishchat.music.MusicPlayerService"

.field private static final OVER_TIME:I = 0x1d4c0

.field public static final SHOULD_SAVE_POWER:Ljava/lang/String; = "should_save_power"

.field private static final STATE_CHAT:I = 0x1

.field private static final STATE_DEEP_SLEEP:I = 0x4

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LIGHT_SLEEP:I = 0x2

.field private static final STATE_MUSIC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DaemonDomain"

.field private static sDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private hasBeenWakeup:Z

.field private isPlayingMusic:Z

.field private mChatState:I

.field private mContext:Landroid/content/Context;

.field private mSecondTimer:Ljava/util/Timer;

.field private mTimer:Ljava/util/Timer;

.field private selfIntro:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mTimer:Ljava/util/Timer;

    .line 46
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    .line 48
    iput-boolean v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->isPlayingMusic:Z

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mChatState:I

    .line 50
    iput-boolean v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->hasBeenWakeup:Z

    .line 53
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    .line 54
    sput-object p2, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 55
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->selfIntro:[Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mChatState:I

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mChatState:I

    return p1
.end method

.method static synthetic access$100(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->selfIntro:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->startPlayMusic()V

    return-void
.end method

.method public static getDaemonDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 60
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->sDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-direct {v0, p0, p1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;-><init>(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->sDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    .line 63
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->sDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    return-object v0
.end method

.method private getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 248
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, p2, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 250
    .local v6, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 251
    .local v7, "serviceInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_1

    .line 252
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 253
    .local v3, "item":Landroid/content/pm/ResolveInfo;
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 254
    move-object v7, v3

    goto :goto_0

    .line 258
    .end local v3    # "item":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v7, :cond_2

    .line 259
    const/4 v2, 0x0

    .line 269
    :goto_1
    return-object v2

    .line 262
    :cond_2
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 263
    .local v4, "packageName":Ljava/lang/String;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 264
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 268
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private processInterrupt()V
    .locals 4

    .prologue
    .line 209
    const-string v0, "DaemonDomain"

    const-string v1, "processInterrupt STATE_LIGHT_SLEEP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    .line 211
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    .line 212
    const/4 v0, 0x2

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mChatState:I

    .line 213
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$2;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$2;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 221
    return-void
.end method

.method private reStart()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->cancel()V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 189
    return-void
.end method

.method private sendPowerSaveBroadcast(Z)V
    .locals 2
    .param p1, "save_power"    # Z

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.POWER_SAVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "should_save_power"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private startPlayMusic()V
    .locals 4

    .prologue
    .line 192
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "MSG"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    const-class v3, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 196
    .local v0, "eintent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    return-void
.end method

.method private startSecondTimer()V
    .locals 4

    .prologue
    .line 224
    const-string v0, "DaemonDomain"

    const-string v1, "startSecondTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    .line 226
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mChatState:I

    .line 228
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$3;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$3;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 237
    return-void
.end method

.method private stopPlayMusic()V
    .locals 4

    .prologue
    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "MSG"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v2, "com.ubtechinc.alphaenglishchat.music.MusicPlayerService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 205
    .local v0, "eintent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 206
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 178
    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mTimer:Ljava/util/Timer;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 182
    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mSecondTimer:Ljava/util/Timer;

    .line 184
    :cond_1
    return-void
.end method

.method public cancelAction()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public handleState(Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 101
    const-string v1, "action_asr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "DaemonDomain"

    const-string v2, "action_asr"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mChatState:I

    packed-switch v1, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :cond_1
    const-string v1, "Interrupt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    const-string v1, "DaemonDomain"

    const-string v2, "SPECIAL_EVENT_INTERRUPT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->hasBeenWakeup:Z

    if-nez v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->cancel()V

    .line 127
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->stopPlayMusic()V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->cancel()V

    .line 131
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->stopPlayMusic()V

    .line 132
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->startSecondTimer()V

    goto :goto_0

    .line 157
    :cond_3
    const-string v1, "Wakeup"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    const-string v1, "DaemonDomain"

    const-string v2, "SPECIAL_EVENT_WAKEUP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->hasBeenWakeup:Z

    .line 160
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->cancel()V

    .line 161
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->stopPlayMusic()V

    goto :goto_0

    .line 162
    :cond_4
    const-string v1, "Hint_Music_Stop"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    const-string v1, "DaemonDomain"

    const-string v2, "SPECIAL_EVENT_HINT_MUSIC_STOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->cancel()V

    .line 166
    invoke-direct {p0, v3}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->sendPowerSaveBroadcast(Z)V

    goto :goto_0

    .line 167
    :cond_5
    const-string v1, "Random_Self_Introduction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "DaemonDomain"

    const-string v2, "SPECIAL_EVENT_RANDOM_SELF_INTRO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->selfIntro:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 170
    .local v0, "index":I
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->selfIntro:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 171
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->startSecondTimer()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 4
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 68
    const-string v0, "DaemonDomain"

    const-string v1, "STATE_CHAT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mChatState:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mTimer:Ljava/util/Timer;

    .line 71
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mTimer:Ljava/util/Timer;

    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 93
    return-void
.end method
