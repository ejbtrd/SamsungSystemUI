.class public Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;
.super Ljava/lang/Object;
.source "ELPlusStyle.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;


# static fields
.field private static final POSTFIX_SUB_NAME:I


# instance fields
.field private mDBName:Ljava/lang/String;

.field private mEffectName:Ljava/lang/String;

.field private mFrameEffect:Landroid/net/Uri;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsCenterPosition:Z

.field private mIsEdgeFrameEffect:Z

.field private mIsEdgeSpecialEffect:Z

.field private mIsStartAfterToastFinished:Z

.field private mRepeatCount:I

.field private mSpecialEffect:Landroid/net/Uri;

.field private mSpecialHeight:I

.field private mSpecialWidth:I

.field private final mSupportMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget v0, Lcom/android/systemui/R$string;->edge_lighting_style_effect:I

    sput v0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->POSTFIX_SUB_NAME:I

    return-void
.end method


# virtual methods
.method public getFrameEffect()Landroid/net/Uri;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mFrameEffect:Landroid/net/Uri;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mDBName:Ljava/lang/String;

    return-object p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mRepeatCount:I

    return p0
.end method

.method public getRoundedIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSpecialEffect()Landroid/net/Uri;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSpecialEffect:Landroid/net/Uri;

    return-object p0
.end method

.method public getSpecialHeight()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSpecialHeight:I

    return p0
.end method

.method public getSpecialWidth()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSpecialWidth:I

    return p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mEffectName:Ljava/lang/String;

    return-object p0
.end method

.method public isCenterPosition()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mIsCenterPosition:Z

    return p0
.end method

.method public isEdgeFrameEffect()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mIsEdgeFrameEffect:Z

    return p0
.end method

.method public isEdgeSpecialEffect()Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mIsEdgeSpecialEffect:Z

    return p0
.end method

.method public isStartAfterToastFinished()Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mIsStartAfterToastFinished:Z

    return p0
.end method

.method public isSupportEffect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
