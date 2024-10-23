.class Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$2;
.super Ljava/lang/Object;
.source "QQMusicSource.java"

# interfaces
.implements Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->getPlayKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->access$000(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->setKey(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->access$100(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->access$000(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->setKey(Ljava/lang/String;)V

    goto :goto_0
.end method
