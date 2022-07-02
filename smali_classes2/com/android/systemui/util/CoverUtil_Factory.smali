.class public final Lcom/android/systemui/util/CoverUtil_Factory;
.super Ljava/lang/Object;
.source "CoverUtil_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/CoverUtil_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/CoverUtil;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/CoverUtil_Factory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/systemui/util/CoverUtil_Factory$InstanceHolder;->access$000()Lcom/android/systemui/util/CoverUtil_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/util/CoverUtil;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/systemui/util/CoverUtil;

    invoke-direct {v0}, Lcom/android/systemui/util/CoverUtil;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/CoverUtil;
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/systemui/util/CoverUtil_Factory;->newInstance()Lcom/android/systemui/util/CoverUtil;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/util/CoverUtil_Factory;->get()Lcom/android/systemui/util/CoverUtil;

    move-result-object p0

    return-object p0
.end method
