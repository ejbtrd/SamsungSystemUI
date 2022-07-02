.class public Lcom/samsung/systemui/splugins/navigationbar/IconResource;
.super Ljava/lang/Object;
.source "IconResource.java"


# static fields
.field public static final UNDEFINED_RES_ID:I = -0x1


# instance fields
.field public mDarkDrawable:Landroid/graphics/drawable/Drawable;

.field public mDarkResId:I

.field public mHasShadow:Z

.field public mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public mIsOldTint:Z

.field public mLightDrawable:Landroid/graphics/drawable/Drawable;

.field public mLightResId:I

.field public mNeedRtlCheck:Z


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 26
    iput p2, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    .line 27
    iput p3, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    .line 28
    iput-boolean p4, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    .line 29
    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    .line 30
    iput-boolean p6, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mHasShadow:Z

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IZZ)V
    .locals 7

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v6, p4

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 45
    iput-object p2, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object p3, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-boolean p4, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    .line 48
    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    .line 49
    iput-boolean p6, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mHasShadow:Z

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    .line 51
    iput p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    .line 40
    invoke-direct/range {v0 .. v6}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method
