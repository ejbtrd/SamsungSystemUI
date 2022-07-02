.class final enum Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;
.super Ljava/lang/Enum;
.source "AUIFacadeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SoundId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

.field public static final enum MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v1, "GeneralOff"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    new-instance v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v3, "GeneralOn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    new-instance v3, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v5, "LightOff"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    new-instance v5, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v7, "LightOn"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 30
    new-instance v7, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v9, "AutomationError"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 31
    new-instance v9, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v11, "AutomationSuccess"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 32
    new-instance v11, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v13, "MediaPause"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    .line 33
    new-instance v13, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const-string v15, "MediaPlayResume"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->$VALUES:[Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;
    .locals 4

    sget-object v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->$VALUES:[Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
