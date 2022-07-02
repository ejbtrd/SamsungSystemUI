.class Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;
.super Ljava/lang/Object;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrimColorState"
.end annotation


# instance fields
.field private final mAlphas:[F

.field private final mColors:[I

.field private mForceChanged:Z

.field private final mScrimViews:[Lcom/android/systemui/scrim/ScrimView;

.field private mScrimVisibility:I


# direct methods
.method constructor <init>(Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;)V
    .locals 3

    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1778
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mColors:[I

    new-array v1, v0, [F

    .line 1779
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mAlphas:[F

    new-array v0, v0, [Lcom/android/systemui/scrim/ScrimView;

    .line 1780
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mScrimViews:[Lcom/android/systemui/scrim/ScrimView;

    const/4 v1, 0x0

    .line 1781
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mForceChanged:Z

    const/4 v2, -0x1

    .line 1782
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mScrimVisibility:I

    aput-object p1, v0, v1

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const/4 p0, 0x2

    aput-object p3, v0, p0

    return-void
.end method


# virtual methods
.method isChanged(I)Z
    .locals 8

    .line 1815
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->isVisibilityChanged(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 1820
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mScrimViews:[Lcom/android/systemui/scrim/ScrimView;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, p1, v3

    .line 1821
    invoke-virtual {v5}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mColors:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mAlphas:[F

    aget v6, v6, v4

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method isVisibilityChanged(I)Z
    .locals 3

    .line 1806
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mForceChanged:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1807
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mForceChanged:Z

    return v1

    .line 1811
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mScrimVisibility:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method setForceChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 1801
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mForceChanged:Z

    return-void
.end method

.method updateColorState(I)V
    .locals 7

    .line 1792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mScrimViews:[Lcom/android/systemui/scrim/ScrimView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 1793
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mColors:[I

    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    move-result v6

    aput v6, v5, v3

    .line 1794
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mAlphas:[F

    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1797
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$ScrimColorState;->mScrimVisibility:I

    return-void
.end method
