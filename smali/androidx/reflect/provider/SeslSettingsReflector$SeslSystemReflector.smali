.class public Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;
.super Ljava/lang/Object;
.source "SeslSettingsReflector.java"


# static fields
.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Landroid/provider/Settings$System;

    sput-object v0, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public static getField_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY()Ljava/lang/String;
    .locals 5

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 54
    sget-object v0, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {v1, v0, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    :cond_0
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    const-string v0, "not_supported"

    return-object v0
.end method

.method public static getField_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 5

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 29
    sget-object v0, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "hidden_SEM_PEN_HOVERING"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-static {v1, v0, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 34
    :cond_0
    sget-object v2, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    const-string v0, "SEM_PEN_HOVERING"

    goto :goto_0

    :cond_1
    const-string v0, "PEN_HOVERING"

    :goto_0
    invoke-static {v2, v0}, Landroidx/reflect/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {v1, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    :cond_2
    :goto_1
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 42
    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_3
    const-string v0, "pen_hovering"

    return-object v0
.end method
