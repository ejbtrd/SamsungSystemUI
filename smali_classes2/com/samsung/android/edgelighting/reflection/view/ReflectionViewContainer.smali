.class public Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;
.super Ljava/lang/Object;
.source "ReflectionViewContainer.java"


# static fields
.field private static sIWindowManagerStubReflection:Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

.field private static sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

.field private static sViewTreeObserverReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;


# direct methods
.method public static getIWindowManagerStubReflection()Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sIWindowManagerStubReflection:Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sIWindowManagerStubReflection:Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    .line 30
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sIWindowManagerStubReflection:Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    return-object v0
.end method

.method public static getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;
    .locals 1

    .line 10
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    .line 14
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    return-object v0
.end method

.method public static getViewTreeObserverInternalInsetsInfoReflection()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    .line 23
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    return-object v0
.end method

.method public static onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    .line 35
    sput-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sIWindowManagerStubReflection:Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    .line 36
    sput-object v0, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    return-void
.end method
