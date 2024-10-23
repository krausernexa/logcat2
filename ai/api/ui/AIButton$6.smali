.class Lai/api/ui/AIButton$6;
.super Ljava/lang/Object;
.source "AIButton.java"

# interfaces
.implements Lai/api/PartialResultsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/AIButton;->initialize(Lai/api/AIConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/ui/AIButton;


# direct methods
.method constructor <init>(Lai/api/ui/AIButton;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/ui/AIButton;

    .prologue
    .line 194
    iput-object p1, p0, Lai/api/ui/AIButton$6;->this$0:Lai/api/ui/AIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPartialResults(Ljava/util/List;)V
    .locals 1
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
    .line 197
    .local p1, "partialResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lai/api/ui/AIButton$6;->this$0:Lai/api/ui/AIButton;

    invoke-static {v0}, Lai/api/ui/AIButton;->access$000(Lai/api/ui/AIButton;)Lai/api/PartialResultsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lai/api/ui/AIButton$6;->this$0:Lai/api/ui/AIButton;

    invoke-static {v0}, Lai/api/ui/AIButton;->access$000(Lai/api/ui/AIButton;)Lai/api/PartialResultsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lai/api/PartialResultsListener;->onPartialResults(Ljava/util/List;)V

    .line 200
    :cond_0
    return-void
.end method
