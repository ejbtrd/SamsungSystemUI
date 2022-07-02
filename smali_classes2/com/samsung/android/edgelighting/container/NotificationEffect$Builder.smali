.class public final Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
.super Ljava/lang/Object;
.source "NotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/NotificationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

.field mFrame:Landroid/net/Uri;

.field mHeight:I

.field mIsCenterPosition:Z

.field mIsEdgeFrameEffect:Z

.field mIsEdgeSpecialEffect:Z

.field mRepeatCount:I

.field mSpecial:Landroid/net/Uri;

.field mStartSpecialEffectAfterToastFinished:Z

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {v0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    .line 1315
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/edgelighting/container/NotificationEffect;
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mFrame:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setFrameEffect(Landroid/net/Uri;)V

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mIsEdgeFrameEffect:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setIsEdgeFrameEffect(Z)V

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mSpecial:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setSpecialEffect(Landroid/net/Uri;)V

    .line 1372
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mStartSpecialEffectAfterToastFinished:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setStartSpecialEffectAfterToastFinished(Z)V

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mIsEdgeSpecialEffect:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setIsEdgeSpecialEffect(Z)V

    .line 1374
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mIsCenterPosition:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setCenterPosition(Z)V

    .line 1375
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mWidth:I

    iget v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setSpecialEffectSize(II)V

    .line 1378
    :cond_1
    iget v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mRepeatCount:I

    if-eqz v0, :cond_2

    .line 1379
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setRepeatCount(I)V

    .line 1381
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    return-object p0
.end method

.method public setFrameEffect(Landroid/net/Uri;)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameEffect"
        }
    .end annotation

    .line 1351
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mFrame:Landroid/net/Uri;

    return-object p0
.end method

.method public setIsCenterPosition(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "center"
        }
    .end annotation

    .line 1325
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mIsCenterPosition:Z

    return-object p0
.end method

.method public setIsEdgeFrameEffect(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 1330
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mIsEdgeFrameEffect:Z

    return-object p0
.end method

.method public setIsEdgeSpecialEffect(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 1335
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mIsEdgeSpecialEffect:Z

    return-object p0
.end method

.method public setRepeatCount(I)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1361
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mRepeatCount:I

    return-object p0
.end method

.method public setSpecialAnimationStartAfterToastFinished(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "after"
        }
    .end annotation

    .line 1346
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mStartSpecialEffectAfterToastFinished:Z

    return-object p0
.end method

.method public setSpecialEffect(Landroid/net/Uri;)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialEffect"
        }
    .end annotation

    .line 1356
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mSpecial:Landroid/net/Uri;

    return-object p0
.end method

.method public setSpecialEffectSize(II)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    .line 1340
    iput p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mWidth:I

    .line 1341
    iput p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->mHeight:I

    return-object p0
.end method
