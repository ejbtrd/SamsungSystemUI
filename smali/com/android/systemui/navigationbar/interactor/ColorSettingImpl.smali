.class public Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;
.super Ljava/lang/Object;
.source "ColorSettingImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public addColorCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->light_navbar_default_opaque_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarColor(I)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarCurrentColor(I)V

    return-void
.end method

.method public getNavigationBarColor()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/util/LightNavigationBarUtil;->getBackgroundOpaqueColor(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public setNavigationBarColor(I)V
    .locals 0

    return-void
.end method
