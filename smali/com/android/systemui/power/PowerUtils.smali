.class Lcom/android/systemui/power/PowerUtils;
.super Ljava/lang/Object;
.source "PowerUtils.java"


# direct methods
.method static isB2Model()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_WATCHFACE:Z

    return v0
.end method

.method static isBloom()Z
    .locals 2

    const-string/jumbo v0, "ro.product.vendor.name"

    .line 29
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bloom"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static isFoldableDevice()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    return v0
.end method
