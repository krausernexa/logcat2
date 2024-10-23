.class Lai/api/ui/AIDialog$3;
.super Ljava/lang/Object;
.source "AIDialog.java"

# interfaces
.implements Lai/api/PartialResultsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/AIDialog;->setAIButtonCallback(Lai/api/ui/AIButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/ui/AIDialog;


# direct methods
.method constructor <init>(Lai/api/ui/AIDialog;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/ui/AIDialog;

    .prologue
    .line 147
    iput-object p1, p0, Lai/api/ui/AIDialog$3;->this$0:Lai/api/ui/AIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPartialResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "partialResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lai/api/ui/AIDialog$3;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v1}, Lai/api/ui/AIDialog;->access$500(Lai/api/ui/AIDialog;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lai/api/ui/AIDialog$3$1;

    invoke-direct {v2, p0, v0}, Lai/api/ui/AIDialog$3$1;-><init>(Lai/api/ui/AIDialog$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_0
    return-void
.end method
