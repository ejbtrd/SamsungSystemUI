.class public final enum Lcom/android/systemui/controls/management/model/MainModel$Type;
.super Ljava/lang/Enum;
.source "MainControlModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/model/MainModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/management/model/MainModel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/controls/management/model/MainModel$Type;

.field public static final enum COMPONENT:Lcom/android/systemui/controls/management/model/MainModel$Type;

.field public static final enum CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

.field public static final enum SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

.field public static final enum STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/android/systemui/controls/management/model/MainModel$Type;

    const-string v1, "STRUCTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/management/model/MainModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    new-instance v1, Lcom/android/systemui/controls/management/model/MainModel$Type;

    const-string v3, "CONTROL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/controls/management/model/MainModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    new-instance v3, Lcom/android/systemui/controls/management/model/MainModel$Type;

    const-string v5, "SMALL_CONTROL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/controls/management/model/MainModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    new-instance v5, Lcom/android/systemui/controls/management/model/MainModel$Type;

    const-string v7, "COMPONENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/controls/management/model/MainModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/controls/management/model/MainModel$Type;->COMPONENT:Lcom/android/systemui/controls/management/model/MainModel$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/systemui/controls/management/model/MainModel$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/systemui/controls/management/model/MainModel$Type;->$VALUES:[Lcom/android/systemui/controls/management/model/MainModel$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/management/model/MainModel$Type;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/controls/management/model/MainModel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/controls/management/model/MainModel$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/management/model/MainModel$Type;
    .locals 4

    sget-object v0, Lcom/android/systemui/controls/management/model/MainModel$Type;->$VALUES:[Lcom/android/systemui/controls/management/model/MainModel$Type;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/controls/management/model/MainModel$Type;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
