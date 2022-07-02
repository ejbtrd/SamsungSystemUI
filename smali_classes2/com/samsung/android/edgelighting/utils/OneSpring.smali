.class public Lcom/samsung/android/edgelighting/utils/OneSpring;
.super Landroid/view/animation/PathInterpolator;
.source "OneSpring.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
