.class final enum Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
.super Ljava/lang/Enum;
.source "MultiSIMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final enum VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 83
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v1, "VOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 84
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v3, "SMS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 85
    new-instance v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v5, "DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 86
    new-instance v5, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v7, "SIMINFO1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 87
    new-instance v7, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const-string v9, "SIMINFO2"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 82
    sput-object v9, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    .locals 1

    .line 82
    const-class v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->$VALUES:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v0}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->index:I

    return p0
.end method
