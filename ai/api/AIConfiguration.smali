.class public Lai/api/AIConfiguration;
.super Ljava/lang/Object;
.source "AIConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/api/AIConfiguration$SupportedLanguages;,
        Lai/api/AIConfiguration$RecognitionEngine;
    }
.end annotation


# static fields
.field protected static final CURRENT_PROTOCOL_VERSION:Ljava/lang/String; = "20150910"

.field protected static final QUESTION_ENDPOINT:Ljava/lang/String; = "query"

.field private static final SERVICE_PROD_URL:Ljava/lang/String; = "https://api.api.ai/v1/"

.field protected static final USER_ENTITIES_ENDPOINT:Ljava/lang/String; = "userEntities"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final language:Lai/api/AIConfiguration$SupportedLanguages;

.field private normalizeInputSound:Z

.field private protocolVersion:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private final recognitionEngine:Lai/api/AIConfiguration$RecognitionEngine;

.field private recognizerCancelSound:Landroid/content/res/AssetFileDescriptor;

.field private recognizerStartSound:Landroid/content/res/AssetFileDescriptor;

.field private recognizerStopSound:Landroid/content/res/AssetFileDescriptor;

.field private serviceUrl:Ljava/lang/String;

.field private voiceActivityDetectionEnabled:Z

.field private writeSoundLog:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lai/api/AIConfiguration$SupportedLanguages;Lai/api/AIConfiguration$RecognitionEngine;)V
    .locals 2
    .param p1, "clientAccessToken"    # Ljava/lang/String;
    .param p2, "language"    # Lai/api/AIConfiguration$SupportedLanguages;
    .param p3, "recognitionEngine"    # Lai/api/AIConfiguration$RecognitionEngine;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean v1, p0, Lai/api/AIConfiguration;->writeSoundLog:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/api/AIConfiguration;->voiceActivityDetectionEnabled:Z

    .line 160
    iput-boolean v1, p0, Lai/api/AIConfiguration;->normalizeInputSound:Z

    .line 165
    iput-object p1, p0, Lai/api/AIConfiguration;->apiKey:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lai/api/AIConfiguration;->language:Lai/api/AIConfiguration$SupportedLanguages;

    .line 167
    iput-object p3, p0, Lai/api/AIConfiguration;->recognitionEngine:Lai/api/AIConfiguration$RecognitionEngine;

    .line 169
    const-string v0, "20150910"

    iput-object v0, p0, Lai/api/AIConfiguration;->protocolVersion:Ljava/lang/String;

    .line 171
    sget-object v0, Lai/api/AIConfiguration$RecognitionEngine;->Speaktoit:Lai/api/AIConfiguration$RecognitionEngine;

    if-ne p3, v0, :cond_0

    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Korean:Lai/api/AIConfiguration$SupportedLanguages;

    if-ne p2, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only System recognition supported for Korean language"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    const-string v0, "https://api.api.ai/v1/"

    iput-object v0, p0, Lai/api/AIConfiguration;->serviceUrl:Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public getApiAiLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lai/api/AIConfiguration;->language:Lai/api/AIConfiguration$SupportedLanguages;

    invoke-static {v0}, Lai/api/AIConfiguration$SupportedLanguages;->access$100(Lai/api/AIConfiguration$SupportedLanguages;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lai/api/AIConfiguration;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lai/api/AIConfiguration;->language:Lai/api/AIConfiguration$SupportedLanguages;

    invoke-static {v0}, Lai/api/AIConfiguration$SupportedLanguages;->access$000(Lai/api/AIConfiguration$SupportedLanguages;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lai/api/AIConfiguration;->protocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lai/api/AIConfiguration;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getQuestionUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lai/api/AIConfiguration;->protocolVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string v0, "%s%s?v=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/AIConfiguration;->serviceUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "query"

    aput-object v2, v1, v4

    iget-object v2, p0, Lai/api/AIConfiguration;->protocolVersion:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/AIConfiguration;->serviceUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "query"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecognitionEngine()Lai/api/AIConfiguration$RecognitionEngine;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lai/api/AIConfiguration;->recognitionEngine:Lai/api/AIConfiguration$RecognitionEngine;

    return-object v0
.end method

.method public getRecognizerCancelSound()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lai/api/AIConfiguration;->recognizerCancelSound:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public getRecognizerStartSound()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lai/api/AIConfiguration;->recognizerStartSound:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public getRecognizerStopSound()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lai/api/AIConfiguration;->recognizerStopSound:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method getUserEntitiesEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lai/api/AIConfiguration;->protocolVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "%s%s?v=%s&sessionId=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/AIConfiguration;->serviceUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "userEntities"

    aput-object v2, v1, v4

    iget-object v2, p0, Lai/api/AIConfiguration;->protocolVersion:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s%s?sessionId=%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/AIConfiguration;->serviceUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "userEntities"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNormalizeInputSound()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lai/api/AIConfiguration;->normalizeInputSound:Z

    return v0
.end method

.method public isVoiceActivityDetectionEnabled()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lai/api/AIConfiguration;->voiceActivityDetectionEnabled:Z

    return v0
.end method

.method public isWriteSoundLog()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lai/api/AIConfiguration;->writeSoundLog:Z

    return v0
.end method

.method public setNormalizeInputSound(Z)V
    .locals 0
    .param p1, "normalizeInputSound"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lai/api/AIConfiguration;->normalizeInputSound:Z

    .line 256
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolVersion"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lai/api/AIConfiguration;->protocolVersion:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 307
    iput-object p1, p0, Lai/api/AIConfiguration;->proxy:Ljava/net/Proxy;

    .line 308
    return-void
.end method

.method public setRecognizerCancelSound(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .param p1, "recognizerCancelSound"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 299
    iput-object p1, p0, Lai/api/AIConfiguration;->recognizerCancelSound:Landroid/content/res/AssetFileDescriptor;

    .line 300
    return-void
.end method

.method public setRecognizerStartSound(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .param p1, "recognizerStartSound"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 283
    iput-object p1, p0, Lai/api/AIConfiguration;->recognizerStartSound:Landroid/content/res/AssetFileDescriptor;

    .line 284
    return-void
.end method

.method public setRecognizerStopSound(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .param p1, "recognizerStopSound"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 291
    iput-object p1, p0, Lai/api/AIConfiguration;->recognizerStopSound:Landroid/content/res/AssetFileDescriptor;

    .line 292
    return-void
.end method

.method public setServiceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceUrl"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lai/api/AIConfiguration;->serviceUrl:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setVoiceActivityDetectionEnabled(Z)V
    .locals 0
    .param p1, "voiceActivityDetectionEnabled"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lai/api/AIConfiguration;->voiceActivityDetectionEnabled:Z

    .line 206
    return-void
.end method

.method public setWriteSoundLog(Z)V
    .locals 0
    .param p1, "writeSoundLog"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lai/api/AIConfiguration;->writeSoundLog:Z

    .line 214
    return-void
.end method
