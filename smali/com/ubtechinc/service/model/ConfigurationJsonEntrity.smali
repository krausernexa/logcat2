.class public Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;
.super Ljava/lang/Object;
.source "ConfigurationJsonEntrity.java"


# instance fields
.field private alice_Server:Ljava/lang/String;

.field private asr_Language:Ljava/lang/String;

.field private default_App:Ljava/lang/String;

.field private develop_Server:Ljava/lang/String;

.field private isBusiness:Z

.field private isOpenDebugLog:Z

.field private isOpenInfoLog:Z

.field private wakeup_word:Ljava/lang/String;

.field private web_Server:Ljava/lang/String;

.field private xmpp_Server:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlice_Server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->alice_Server:Ljava/lang/String;

    return-object v0
.end method

.method public getAsr_Language()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->asr_Language:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault_App()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->default_App:Ljava/lang/String;

    return-object v0
.end method

.method public getDevelop_Server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->develop_Server:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBusiness()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->isBusiness:Z

    return v0
.end method

.method public getIsOpenDebugLog()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->isOpenDebugLog:Z

    return v0
.end method

.method public getIsOpenInfoLog()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->isOpenInfoLog:Z

    return v0
.end method

.method public getWakeup_word()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->wakeup_word:Ljava/lang/String;

    return-object v0
.end method

.method public getWeb_Server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->web_Server:Ljava/lang/String;

    return-object v0
.end method

.method public getXmpp_Server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->xmpp_Server:Ljava/lang/String;

    return-object v0
.end method

.method public setAlice_Server(Ljava/lang/String;)V
    .locals 0
    .param p1, "alice_Server"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->alice_Server:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setAsr_Language(Ljava/lang/String;)V
    .locals 0
    .param p1, "asr_Language"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->asr_Language:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDefault_App(Ljava/lang/String;)V
    .locals 0
    .param p1, "default_App"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->default_App:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDevelop_Server(Ljava/lang/String;)V
    .locals 0
    .param p1, "develop_Server"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->develop_Server:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setIsBusiness(Z)V
    .locals 0
    .param p1, "business"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->isBusiness:Z

    .line 53
    return-void
.end method

.method public setIsOpenDebugLog(Z)V
    .locals 0
    .param p1, "openDebugLog"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->isOpenDebugLog:Z

    .line 61
    return-void
.end method

.method public setIsOpenInfoLog(Z)V
    .locals 0
    .param p1, "openInfoLog"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->isOpenInfoLog:Z

    .line 69
    return-void
.end method

.method public setWakeup_word(Ljava/lang/String;)V
    .locals 0
    .param p1, "wakeup_word"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->wakeup_word:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setWeb_Server(Ljava/lang/String;)V
    .locals 0
    .param p1, "web_Server"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->web_Server:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setXmpp_Server(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmpp_Server"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ubtechinc/service/model/ConfigurationJsonEntrity;->xmpp_Server:Ljava/lang/String;

    .line 101
    return-void
.end method
