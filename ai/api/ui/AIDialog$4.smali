.class Lai/api/ui/AIDialog$4;
.super Ljava/lang/Object;
.source "AIDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/ui/AIDialog;->close()V
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
    .line 173
    iput-object p1, p0, Lai/api/ui/AIDialog$4;->this$0:Lai/api/ui/AIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lai/api/ui/AIDialog$4;->this$0:Lai/api/ui/AIDialog;

    invoke-static {v0}, Lai/api/ui/AIDialog;->access$100(Lai/api/ui/AIDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 177
    return-void
.end method
