.class public interface abstract Lai/api/ui/AIDialog$AIDialogListener;
.super Ljava/lang/Object;
.source "AIDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/ui/AIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AIDialogListener"
.end annotation


# virtual methods
.method public abstract onCancelled()V
.end method

.method public abstract onError(Lai/api/model/AIError;)V
.end method

.method public abstract onResult(Lai/api/model/AIResponse;)V
.end method
