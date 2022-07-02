.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SsdkUnsupportedException.java"


# instance fields
.field private mErrorType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    .line 52
    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    return-void
.end method
