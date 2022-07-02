.class public final enum Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;
.super Ljava/lang/Enum;
.source "GlobalActionCommandDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum add_condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum add_feature:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum hide:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum none:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum remove_condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum remove_feature:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum reset:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum show:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

.field public static final enum unknown:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 67
    new-instance v0, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->none:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 68
    new-instance v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v3, "show"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->show:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 69
    new-instance v3, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string v5, "hide"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->hide:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 70
    new-instance v5, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string v7, "condition"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 71
    new-instance v7, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string v9, "add_feature"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->add_feature:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 72
    new-instance v9, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v11, "remove_feature"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->remove_feature:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 73
    new-instance v11, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string v13, "add_condition"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->add_condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 74
    new-instance v13, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v15, "remove_condition"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->remove_condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 75
    new-instance v15, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v14, "reset"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->reset:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    .line 76
    new-instance v14, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const-string/jumbo v12, "unknown"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->unknown:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->$VALUES:[Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 77
    check-cast p0, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;
    .locals 4

    sget-object v0, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->$VALUES:[Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
