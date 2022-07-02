.class public final enum Lcom/android/wm/shell/common/DismissButtonView$DismissType;
.super Ljava/lang/Enum;
.source "DismissButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DismissButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DismissType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/common/DismissButtonView$DismissType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/wm/shell/common/DismissButtonView$DismissType;

.field public static final enum DND:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

.field public static final enum FREEFORM:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

.field public static final enum NONE:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

.field public static final enum PIP:Lcom/android/wm/shell/common/DismissButtonView$DismissType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 78
    new-instance v0, Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/DismissButtonView$DismissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->NONE:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    .line 79
    new-instance v1, Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    const-string v3, "DND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/wm/shell/common/DismissButtonView$DismissType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->DND:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    .line 80
    new-instance v3, Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    const-string v5, "PIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/wm/shell/common/DismissButtonView$DismissType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->PIP:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    .line 81
    new-instance v5, Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    const-string v7, "FREEFORM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/wm/shell/common/DismissButtonView$DismissType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->FREEFORM:Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 77
    sput-object v7, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->$VALUES:[Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/common/DismissButtonView$DismissType;
    .locals 1

    .line 77
    const-class v0, Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/common/DismissButtonView$DismissType;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/wm/shell/common/DismissButtonView$DismissType;->$VALUES:[Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    invoke-virtual {v0}, [Lcom/android/wm/shell/common/DismissButtonView$DismissType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/common/DismissButtonView$DismissType;

    return-object v0
.end method
