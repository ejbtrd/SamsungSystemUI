.class public final synthetic Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl$WhenMappings;
.super Ljava/lang/Object;
.source "ProtocolManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl;
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

    invoke-static {}, Lcom/android/systemui/uiautomator/protocol/Protocol$Command;->values()[Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/android/systemui/uiautomator/protocol/Protocol$Command;->start_monitor:Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/protocol/Protocol$Command;->stop_monitor:Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/android/systemui/uiautomator/protocol/Protocol$Command;->check_api:Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/uiautomator/protocol/ProtocolManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
