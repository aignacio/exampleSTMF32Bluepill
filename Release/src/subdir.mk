################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/stm32f1xx_hal_msp.c \
../src/stm32f1xx_it.c \
../src/usb_device.c \
../src/usbd_conf.c \
../src/usbd_desc.c \
../src/usbd_storage_if.c 

OBJS += \
./src/main.o \
./src/stm32f1xx_hal_msp.o \
./src/stm32f1xx_it.o \
./src/usb_device.o \
./src/usbd_conf.o \
./src/usbd_desc.o \
./src/usbd_storage_if.o 

C_DEPS += \
./src/main.d \
./src/stm32f1xx_hal_msp.d \
./src/stm32f1xx_it.d \
./src/usb_device.d \
./src/usbd_conf.d \
./src/usbd_desc.d \
./src/usbd_storage_if.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -Wall -Wextra  -g -DNDEBUG -DSTM32F103xB -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f1xx" -I"../system/include/cmsis/device" -I"../Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


