.class Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction$1;
.super Ljava/lang/Object;
.source "SearchJokeAction.java"

# interfaces
.implements Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->findJoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;

    invoke-static {v5}, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->access$000(Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "text":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 59
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v5

    const-class v6, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;

    .line 60
    invoke-virtual {v5, p2, v6}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;

    .line 61
    .local v1, "joke":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;->getModels()Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "mResult":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;>;"
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 64
    .local v3, "ramdon":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    rem-int v0, v5, v6

    .line 65
    .local v0, "index":I
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;

    invoke-virtual {v5}, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->getJokeContext()Ljava/lang/String;

    move-result-object v4

    .line 66
    const-string v5, "zdy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JokeModel result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "index":I
    .end local v1    # "joke":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/JokeResponse;
    .end local v2    # "mResult":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;>;"
    .end local v3    # "ramdon":Ljava/util/Random;
    :cond_0
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->access$100()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 71
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->access$100()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->onCompletion()V

    .line 72
    return-void
.end method
