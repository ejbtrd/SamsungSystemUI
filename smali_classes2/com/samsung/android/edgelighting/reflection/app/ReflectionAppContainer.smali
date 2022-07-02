.class public Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;
.super Ljava/lang/Object;
.source "ReflectionAppContainer.java"


# static fields
.field private static sPendingIntentReflection:Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;


# direct methods
.method public static getPendingInent()Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;->sPendingIntentReflection:Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;->sPendingIntentReflection:Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;

    .line 39
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;->sPendingIntentReflection:Lcom/samsung/android/edgelighting/reflection/app/PendingIntentReflection;

    return-object v0
.end method
