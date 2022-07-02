.class public Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;
.super Ljava/lang/Object;
.source "EdgeEffectInfo.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mEdgeLightingAction:Z

.field private mEffectColors:[I

.field private mEffectType:I

.field private mFillFullColor:Z

.field private mFrameEffect:Landroid/net/Uri;

.field private mHasActionButton:Z

.field private mInfiniteLighting:Z

.field private mIsBlackBG:Z

.field private mIsCenterPositionSpecialEffect:Z

.field private mIsEdgeFrameEffect:Z

.field private mIsEdgeSpecialEffect:Z

.field private mIsGrayScaled:Z

.field private mIsMultiResolutionSupoorted:Z

.field private mLightingDuration:J

.field private mNotificationKey:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRadiusWeight:F

.field private mRepeatCount:I

.field private mRotateDuration:J

.field private mShowOnlyToast:Z

.field private mSpecialAnimationStartAfterToastFinished:Z

.field private mSpecialEffect:Landroid/net/Uri;

.field private mSpecialHeight:I

.field private mSpecialWidth:I

.field private mStrokeAlpha:F

.field private mStrokeWidth:F

.field private mText:[Ljava/lang/String;

.field private mToastDuration:J

.field private mToastStyle:I

.field private mWidthDepth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mInfiniteLighting:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mFillFullColor:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mShowOnlyToast:Z

    .line 76
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsGrayScaled:Z

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getEdgeLightingAction()Z
    .locals 0

    .line 332
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    return p0
.end method

.method public getEffectColors()[I
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mEffectColors:[I

    return-object p0
.end method

.method public getEffectType()I
    .locals 0

    .line 320
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mEffectType:I

    return p0
.end method

.method public getFillFullColor()Z
    .locals 0

    .line 300
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mFillFullColor:Z

    return p0
.end method

.method public getFrameEffect()Landroid/net/Uri;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mFrameEffect:Landroid/net/Uri;

    return-object p0
.end method

.method public getInfiniteLighting()Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mInfiniteLighting:Z

    return p0
.end method

.method public getLightingDuration()J
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mLightingDuration:J

    return-wide v0
.end method

.method public getNotificationKey()Ljava/lang/String;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getRadiusWeight()F
    .locals 0

    .line 328
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mRadiusWeight:F

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 168
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mRepeatCount:I

    return p0
.end method

.method public getRotateDuration()J
    .locals 2

    .line 308
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mRotateDuration:J

    return-wide v0
.end method

.method public getShowOnlyToast()Z
    .locals 0

    .line 304
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mShowOnlyToast:Z

    return p0
.end method

.method public getSpecialEffect()Landroid/net/Uri;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialEffect:Landroid/net/Uri;

    return-object p0
.end method

.method public getSpecialHeight()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialHeight:I

    return p0
.end method

.method public getSpecialWidth()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialWidth:I

    return p0
.end method

.method public getStrokeAlpha()F
    .locals 0

    .line 312
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mStrokeAlpha:F

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    .line 288
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mStrokeWidth:F

    return p0
.end method

.method public getTickerText()[Ljava/lang/String;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    return-object p0
.end method

.method public getToastDuration()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mToastDuration:J

    return-wide v0
.end method

.method public getToastStyle()I
    .locals 0

    .line 296
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mToastStyle:I

    return p0
.end method

.method public getUsingBlackBG()Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsBlackBG:Z

    return p0
.end method

.method public getWidthDepth()I
    .locals 0

    .line 292
    iget p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mWidthDepth:I

    return p0
.end method

.method public hasActionButton()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mHasActionButton:Z

    return p0
.end method

.method public isCenterPositionSpecialEffect()Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsCenterPositionSpecialEffect:Z

    return p0
.end method

.method public isEdgeFrameEffect()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsEdgeFrameEffect:Z

    return p0
.end method

.method public isEdgeSpecialEffect()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsEdgeSpecialEffect:Z

    return p0
.end method

.method public isGrayScaled()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsGrayScaled:Z

    return p0
.end method

.method public isMultiResolutionSupoorted()Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    return p0
.end method

.method public isSpecialAnimationStartAfterToastFinished()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialAnimationStartAfterToastFinished:Z

    return p0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEdgeLightingAction(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 252
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    return-void
.end method

.method public setEffectColors([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mEffectColors:[I

    return-void
.end method

.method public setEffectType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 240
    iput p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mEffectType:I

    return-void
.end method

.method public setFrameEffect(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameEffect"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mFrameEffect:Landroid/net/Uri;

    return-void
.end method

.method public setHasActionButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasActionButton"
        }
    .end annotation

    .line 87
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mHasActionButton:Z

    return-void
.end method

.method public setInfiniteLighting(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInfinte"
        }
    .end annotation

    .line 192
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mInfiniteLighting:Z

    return-void
.end method

.method public setIsCenterPosition(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "center"
        }
    .end annotation

    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsCenterPositionSpecialEffect:Z

    return-void
.end method

.method public setIsEdgeFrameEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsEdgeFrameEffect:Z

    return-void
.end method

.method public setIsEdgeSpecialEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 107
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsEdgeSpecialEffect:Z

    return-void
.end method

.method public setIsGrayScaled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isGrayScaled"
        }
    .end annotation

    .line 79
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsGrayScaled:Z

    return-void
.end method

.method public setIsMultiResolutionSupoorted(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .line 128
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    return-void
.end method

.method public setLightingDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 202
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mLightingDuration:J

    return-void
.end method

.method public setNotificationKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 95
    iput p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mRepeatCount:I

    return-void
.end method

.method public setSpecialAnimationStartAfterToastFinished(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "after"
        }
    .end annotation

    .line 116
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialAnimationStartAfterToastFinished:Z

    return-void
.end method

.method public setSpecialEffect(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialEffect"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialEffect:Landroid/net/Uri;

    return-void
.end method

.method public setSpecialEffectSize(II)V
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

    .line 111
    iput p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialWidth:I

    .line 112
    iput p2, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mSpecialHeight:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 232
    iput p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mStrokeAlpha:F

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 210
    iput p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mStrokeWidth:F

    const/4 p1, -0x1

    .line 211
    iput p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mWidthDepth:I

    return-void
.end method

.method public setStrokeWidth(FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "depth"
        }
    .end annotation

    .line 215
    iput p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mStrokeWidth:F

    .line 216
    iput p2, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mWidthDepth:I

    return-void
.end method

.method public setTickerText([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    return-void
.end method

.method public setUsingBlackBG(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBlackBG"
        }
    .end annotation

    .line 188
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->mIsBlackBG:Z

    return-void
.end method
