.class public final synthetic Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$WhenMappings;
.super Ljava/lang/Object;
.source "GlobalActionCommandDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->values()[Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->show:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->hide:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->add_feature:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->remove_feature:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->add_condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->remove_condition:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->reset:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->unknown:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
