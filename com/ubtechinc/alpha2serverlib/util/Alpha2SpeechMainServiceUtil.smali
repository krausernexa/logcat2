.class public Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;
.super Ljava/lang/Object;
.source "Alpha2SpeechMainServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;,
        Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;
    }
.end annotation


# static fields
.field private static defaultLanguage:Lcom/ubtechinc/contant/CustomLanguage;

.field private static isFirst:Z

.field private static mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

.field private static mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;


# instance fields
.field private Alpha2SpeechMainServiceIntent:Ljava/lang/String;

.field private mCientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

.field private mContext:Landroid/content/Context;

.field private mEnglishOfflineUnderstandListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;

.field private mEnglishUnderstanderListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;

.field private mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

.field private mGrammarListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

.field private mSessionID:B

.field private mSpeechInitListener:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

.field private mTextUnderstanderListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;

.field private sForbidTTS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->defaultLanguage:Lcom/ubtechinc/contant/CustomLanguage;

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->isFirst:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    .line 81
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setAlpha2SpeechMainServiceIntent()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mCientListener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    .prologue
    const/4 v4, 0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    .line 131
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setAlpha2SpeechMainServiceIntent()V

    .line 133
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    .line 134
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    if-eqz v2, :cond_0

    .line 136
    :try_start_0
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->onPlayEnd(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onStopPlay()V

    .line 143
    :cond_0
    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V

    sput-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    .line 145
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "service":Landroid/content/Intent;
    const-string v2, "com.ubtechinc.alpha2services"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 151
    const-string v2, "SpeechConnecton"

    const-string v3, "SpeechConnecton bindService "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 137
    .end local v1    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mCientListener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;
    .param p3, "mSpeechInitListener"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    .prologue
    const/4 v4, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    .line 157
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setAlpha2SpeechMainServiceIntent()V

    .line 159
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    .line 160
    iput-object p3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mSpeechInitListener:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    .line 161
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    if-eqz v2, :cond_0

    .line 163
    :try_start_0
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->onPlayEnd(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onStopPlay()V

    .line 170
    :cond_0
    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V

    sput-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    .line 172
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "service":Landroid/content/Intent;
    const-string v2, "com.ubtechinc.alpha2services"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p1, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 176
    return-void

    .line 164
    .end local v1    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;Lcom/ubtechinc/contant/CustomLanguage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mCientListener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;
    .param p3, "mSpeechInitListener"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;
    .param p4, "specifyLanguage"    # Lcom/ubtechinc/contant/CustomLanguage;

    .prologue
    const/4 v4, 0x1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    .line 209
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p0, p4}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setAlpha2SpeechMainServiceIntent(Lcom/ubtechinc/contant/CustomLanguage;)V

    .line 211
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    .line 212
    iput-object p3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mSpeechInitListener:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    .line 213
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    if-eqz v2, :cond_0

    .line 215
    :try_start_0
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->onPlayEnd(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onStopPlay()V

    .line 222
    :cond_0
    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V

    sput-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    .line 224
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "service":Landroid/content/Intent;
    const-string v2, "com.ubtechinc.alpha2services"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p1, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 228
    return-void

    .line 216
    .end local v1    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;Lcom/ubtechinc/contant/CustomLanguage;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mCientListener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;
    .param p3, "specifyLanguage"    # Lcom/ubtechinc/contant/CustomLanguage;

    .prologue
    const/4 v5, 0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v3, ""

    iput-object v3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    .line 48
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    .line 181
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "a":I
    invoke-virtual {p0, p3}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setAlpha2SpeechMainServiceIntent(Lcom/ubtechinc/contant/CustomLanguage;)V

    .line 184
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    .line 185
    sget-object v3, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    if-eqz v3, :cond_0

    .line 187
    :try_start_0
    sget-object v3, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;->onPlayEnd(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onStopPlay()V

    .line 194
    :cond_0
    new-instance v3, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;

    invoke-direct {v3, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V

    sput-object v3, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    .line 196
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, "service":Landroid/content/Intent;
    const-string v3, "com.ubtechinc.alpha2services"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p1, v2, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 202
    const-string v3, "SpeechConnecton"

    const-string v4, "SpeechConnecton bindService "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 188
    .end local v2    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mTextUnderstanderListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mEnglishOfflineUnderstandListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mEnglishUnderstanderListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mGrammarListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    return-object v0
.end method

.method private getSystemLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 72
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "language":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public ReleaseConnection()Z
    .locals 3

    .prologue
    .line 301
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->unRegisterSpeechCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 309
    const/4 v1, 0x1

    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public englishUnderstand(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;)V
    .locals 3
    .param p1, "englishUnderstandListener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;
    .param p2, "englishOfflineListener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mEnglishUnderstanderListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;

    .line 540
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mEnglishOfflineUnderstandListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;

    .line 542
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$2;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$2;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->setEnglishOfflineListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;)V

    .line 551
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$3;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$3;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onEnglishUnderstand(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getmSpeechInitListener()Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mSpeechInitListener:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    return-object v0
.end method

.method public initSpeechGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;)V
    .locals 2
    .param p1, "strGrammar"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;

    .prologue
    .line 573
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1, p1, p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->initSpeechGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitCompleted()Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public issForbidTTS()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    return v0
.end method

.method public onPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "strVoiceName"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 374
    return-void
.end method

.method public onPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "voiceName"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "isTip"    # Z

    .prologue
    .line 431
    if-eqz p4, :cond_0

    .line 432
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onPlay(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 434
    :cond_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onPlayHigh(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPlay(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isTip"    # Z

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->onPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 387
    return-void
.end method

.method public onPlay(Ljava/lang/String;ZLcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isTip"    # Z
    .param p3, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .prologue
    .line 400
    :try_start_0
    iget-boolean v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    if-nez v1, :cond_1

    .line 401
    iput-object p3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 402
    if-eqz p2, :cond_0

    .line 403
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onPlay(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 405
    :cond_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onPlayHigh(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 414
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 265
    invoke-static {p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    move-result-object v1

    sput-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    .line 266
    const-string v1, "SpeechConnecton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! binder <-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mSpeechInitListener:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mSpeechInitListener:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    invoke-interface {v1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;->initOver()V

    .line 271
    :cond_0
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    .line 272
    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->registerSpeechCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mSessionID:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 289
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->unRegisterSpeechCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSpeech(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 338
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onSpeech(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStopPlay()V
    .locals 3

    .prologue
    .line 451
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onStopPlay(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStopSpeech()V
    .locals 3

    .prologue
    .line 466
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onStopSpeech(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAlpha2SpeechMainServiceIntent()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->defaultLanguage:Lcom/ubtechinc/contant/CustomLanguage;

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->setAlpha2SpeechMainServiceIntent(Lcom/ubtechinc/contant/CustomLanguage;)V

    .line 58
    return-void
.end method

.method public setAlpha2SpeechMainServiceIntent(Lcom/ubtechinc/contant/CustomLanguage;)V
    .locals 3
    .param p1, "specifyLanguage"    # Lcom/ubtechinc/contant/CustomLanguage;

    .prologue
    .line 65
    const-string v0, "com.ubtechinc.services.SpeechServices"

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    .line 67
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! SpeechServiceIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public setRecognizedLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 318
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    if-eqz v1, :cond_0

    .line 320
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mGrammarListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    .line 321
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->setRecognizedLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSelfInterrupt(Z)V
    .locals 2
    .param p1, "isInterrupt"    # Z

    .prologue
    .line 615
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->setSelfInterrupt(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStartEarLed()V
    .locals 2

    .prologue
    .line 628
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->setStartEarLed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVoiceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "strVoiceName"    # Ljava/lang/String;

    .prologue
    .line 364
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->setVoiceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWakeState(Z)V
    .locals 2
    .param p1, "onWake"    # Z

    .prologue
    .line 493
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->setWakeState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setmSpeechInitListener(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;)V
    .locals 0
    .param p1, "mSpeechInitListener"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mSpeechInitListener:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$ISpeechInitInterface;

    .line 127
    return-void
.end method

.method public setsForbidTTS(Z)V
    .locals 0
    .param p1, "sForbidTTS"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->sForbidTTS:Z

    .line 692
    return-void
.end method

.method public startService()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    return-void
.end method

.method public startSpeechGrammar(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    .prologue
    .line 586
    :try_start_0
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mGrammarListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    .line 587
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->startSpeechGrammar(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startSpeechNoWakeup()V
    .locals 3

    .prologue
    .line 352
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->startSpeechNoWakeup(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->Alpha2SpeechMainServiceIntent:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 109
    return-void
.end method

.method public stopSpeechAndEnterIdleMode()V
    .locals 2

    .prologue
    .line 477
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    if-eqz v1, :cond_0

    .line 479
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->stopSpeechAndEnterIdleMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopSpeechGrammar()V
    .locals 2

    .prologue
    .line 599
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mGrammarListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    .line 600
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    invoke-interface {v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->stopSpeechGrammar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public textUnderstand(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;)V
    .locals 3
    .param p1, "strTextToUnderstand"    # Ljava/lang/String;
    .param p2, "textUnderstandListener"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;

    .prologue
    .line 506
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mTextUnderstanderListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;

    .line 508
    :try_start_0
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;

    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$1;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$1;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V

    invoke-interface {v1, p1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;->onTextUnderstand(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitForInitComplete()V
    .locals 4

    .prologue
    .line 245
    const/16 v0, 0x12c

    .line 246
    .local v0, "nTimes":I
    :goto_0
    if-lez v0, :cond_0

    .line 247
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 248
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->isInitCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    return-void

    .line 252
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
