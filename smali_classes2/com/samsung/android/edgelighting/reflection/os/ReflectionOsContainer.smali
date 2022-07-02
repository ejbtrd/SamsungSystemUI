.class public Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;
.super Ljava/lang/Object;
.source "ReflectionOsContainer.java"


# static fields
.field private static sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;


# direct methods
.method public static getServiceManagerReflection()Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;->sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;->sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;->sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    return-object v0
.end method
