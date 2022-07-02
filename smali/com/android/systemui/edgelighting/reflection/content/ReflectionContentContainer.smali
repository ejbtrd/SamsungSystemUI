.class public Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;
.super Ljava/lang/Object;
.source "ReflectionContentContainer.java"


# static fields
.field private static sContextReflection:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;


# direct methods
.method public static getContext()Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;->sContextReflection:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;->sContextReflection:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;->sContextReflection:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    return-object v0
.end method
