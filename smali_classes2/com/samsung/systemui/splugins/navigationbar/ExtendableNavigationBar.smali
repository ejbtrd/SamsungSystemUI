.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;
.super Ljava/lang/Object;
.source "ExtendableNavigationBar.java"


# virtual methods
.method public abstract forceSetBackGesture(Z)V
.end method

.method public abstract getActivityOptionsWrapper()Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;
.end method

.method public abstract getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
.end method

.method public abstract getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
.end method

.method public abstract getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
.end method

.method public abstract getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
.end method

.method public abstract getDisabledFlags()I
.end method

.method public abstract getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
.end method

.method public abstract getNavBarStoreAdapter()Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
.end method

.method public abstract getTaskStackAdapter()Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract registerKeyguardStateCallback()V
.end method

.method public abstract resetScheduleAutoHide()V
.end method

.method public abstract setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
.end method

.method public abstract setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
.end method

.method public abstract setForceShowNavigationBarFlag(Landroid/content/Context;Z)V
.end method

.method public abstract setIconThemeAlpha(F)V
.end method

.method public abstract setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
.end method

.method public abstract setRotationLockAtAngle(ZI)V
.end method

.method public abstract setRotationLocked(Z)V
.end method

.method public abstract unregisterKeyguardStateCallback()V
.end method

.method public abstract updateOpaqueColor(I)V
.end method
