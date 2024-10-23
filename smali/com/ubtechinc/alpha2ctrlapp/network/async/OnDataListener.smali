.class public interface abstract Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;
.super Ljava/lang/Object;
.source "OnDataListener.java"


# virtual methods
.method public abstract doInBackground(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation
.end method

.method public abstract onFailure(IILjava/lang/Object;)V
.end method

.method public abstract onSuccess(ILjava/lang/Object;)V
.end method
