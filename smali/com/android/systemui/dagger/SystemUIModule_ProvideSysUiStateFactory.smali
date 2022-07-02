.class public final Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;
.super Ljava/lang/Object;
.source "SystemUIModule_ProvideSysUiStateFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/model/SysUiState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory$InstanceHolder;->access$000()Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideSysUiState()Lcom/android/systemui/model/SysUiState;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule;->provideSysUiState()Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/model/SysUiState;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->provideSysUiState()Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->get()Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    return-object p0
.end method
