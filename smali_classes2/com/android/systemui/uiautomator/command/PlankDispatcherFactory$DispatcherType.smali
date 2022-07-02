.class public final enum Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;
.super Ljava/lang/Enum;
.source "PlankDispatcherFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DispatcherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

.field public static final enum global_action:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

.field public static final enum navigation_bar:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

.field public static final enum none:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

.field public static final enum volume_panel:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->none:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    .line 15
    new-instance v1, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    const-string v3, "global_action"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->global_action:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    .line 16
    new-instance v3, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    const-string/jumbo v5, "volume_panel"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->volume_panel:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    .line 17
    new-instance v5, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    const-string/jumbo v7, "navigation_bar"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->navigation_bar:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->$VALUES:[Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;
    .locals 4

    sget-object v0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->$VALUES:[Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
