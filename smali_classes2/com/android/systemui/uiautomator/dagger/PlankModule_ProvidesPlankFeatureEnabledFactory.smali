.class public final Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;
.super Ljava/lang/Object;
.source "PlankModule_ProvidesPlankFeatureEnabledFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory$InstanceHolder;->access$000()Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesPlankFeatureEnabled()Z
    .locals 1

    .line 25
    invoke-static {}, Lcom/android/systemui/uiautomator/dagger/PlankModule;->providesPlankFeatureEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;->providesPlankFeatureEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
