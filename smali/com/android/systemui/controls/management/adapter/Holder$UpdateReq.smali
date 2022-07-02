.class public final enum Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;
.super Ljava/lang/Enum;
.source "MainControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/management/adapter/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateReq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

.field public static final enum UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 508
    new-instance v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    const-string v1, "UPDATE_DIM_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->$VALUES:[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 507
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 508
    check-cast p0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;
    .locals 4

    sget-object v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->$VALUES:[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
