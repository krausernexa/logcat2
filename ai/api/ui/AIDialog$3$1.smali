.class Lai/api/ui/AIDialog$3$1;
.super Ljava/lang/Object;
.source "AIDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/AIDialog$3;->onPartialResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lai/api/ui/AIDialog$3;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lai/api/ui/AIDialog$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lai/api/ui/AIDialog$3;

    .prologue
    .line 152
    iput-object p1, p0, Lai/api/ui/AIDialog$3$1;->this$1:Lai/api/ui/AIDialog$3;

    iput-object p2, p0, Lai/api/ui/AIDialog$3$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lai/api/ui/AIDialog$3$1;->this$1:Lai/api/ui/AIDialog$3;

    iget-object v0, v0, Lai/api/ui/AIDialog$3;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$400(Lai/api/ui/AIDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lai/api/ui/AIDialog$3$1;->this$1:Lai/api/ui/AIDialog$3;

    iget-object v0, v0, Lai/api/ui/AIDialog$3;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$400(Lai/api/ui/AIDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lai/api/ui/AIDialog$3$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    return-void
.end method
