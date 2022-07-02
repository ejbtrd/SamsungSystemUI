.class public abstract Lcom/android/systemui/controls/management/model/MainModel;
.super Ljava/lang/Object;
.source "MainControlModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/model/MainModel$Type;
    }
.end annotation


# instance fields
.field private needToMakeDim:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNeedToMakeDim()Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    return p0
.end method

.method public abstract getType()Lcom/android/systemui/controls/management/model/MainModel$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final setNeedToMakeDim(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/model/MainModel;->needToMakeDim:Z

    return-void
.end method
