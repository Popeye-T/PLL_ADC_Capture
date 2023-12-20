/**
 * Copyright (c) 2022-2023��HelloAlpha
 *
 * Change Logs:
 * Date           Author       Notes
 */
#ifndef __SPI_CTRL_H__
#define __SPI_CTRL_H__

#include "spi_io.h"

#include "sleep.h"

#define SPI_DELAY(...)	usleep(__VA_ARGS__)

#define SPI_START_COMMUNICATION     NSS_L()
#define SPI_STOP_COMMUNICATION      NSS_H()

/**
 * CPOL ���� SPI ���ߵļ���
 * CPHA ���� SPI ���ߵ���λ
 *
 * ģʽ0��CPOL=0��CPHA =0  MSB first
 *      SCK����Ϊ�͵�ƽ��������SCK�������ر�����(��ȡ����)
 * ģʽ1��CPOL=0��CPHA =1  MSB first
 *      SCK����Ϊ�͵�ƽ��������SCK���½��ر�����(��ȡ����)
 * ģʽ2��CPOL=1��CPHA =0  MSB first
 *      SCK����Ϊ�ߵ�ƽ��������SCK���½��ر�����(��ȡ����)
 * ģʽ3��CPOL=1��CPHA =1  MSB first
 *      SCK����Ϊ�ߵ�ƽ��������SCK�������ر�����(��ȡ����)
 */

/* CPOL = 0, CPHA = 0,  MSB first*/
uint8_t SOFT_SPI_RW_MODE0(uint8_t write_dat);
/* CPOL=0��CPHA=1, MSB first */
uint8_t SOFT_SPI_RW_MODE1(uint8_t write_dat);
/* CPOL=1��CPHA=0, MSB first */
uint8_t SOFT_SPI_RW_MODE2(uint8_t write_dat);
/* CPOL = 1, CPHA = 1, MSB first */
uint8_t SOFT_SPI_RW_MODE3( uint8_t write_dat );

#endif
