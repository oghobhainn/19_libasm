/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmcgahan <cmcgahan@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/05 15:20:37 by cmcgahan          #+#    #+#             */
/*   Updated: 2020/11/05 16:04:32 by cmcgahan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	int		fd;
	int		ret;
	char	*buf = malloc(1024);
	char	*dest = malloc(sizeof(char) * 10);
	
	printf("---------------------------------------------");
	printf("\n|\t\tOFFICIAL\t|\tMINE|\n");
	printf("---------------------------------------------");

	printf("\nSTRLEN\n");
	printf("[coucou]  \t%zu\t\t|\t%zu\n", strlen("coucou"), ft_strlen("coucou"));
	printf("[]  \t\t%zu\t\t|\t%zu\n", strlen(""), ft_strlen(""));
	printf("[abc\\0def]  \t%zu\t\t|\t%zu\n", strlen("abc\0def"), ft_strlen("abc\0def"));
	
	printf("\nSTRCMP\n");	
	printf("s1 <  s2  \t%d\t\t|\t%d\n", strcmp("abc", "abcdef"), ft_strcmp("abc", "abcdef"));
	printf("s1 == s2  \t%d\t\t|\t%d\n", strcmp("abcdef", "abcdef"), ft_strcmp("abcdef", "abcdef"));
	printf("s1 >  s2  \t%d\t\t|\t%d\n", strcmp("abcdef", "abc"), ft_strcmp("abcdef", "abc"));
	
	printf("\nSTRCPY\n");
	printf("[coucou]  \t%s\t\t|\t%s\n", strcpy(dest, "coucou"), ft_strcpy(dest, "coucou"));
	printf("[]  \t\t[%s]\t\t|\t[%s]\n", strcpy(dest, ""), ft_strcpy(dest, ""));
	printf("[abc\\0def]  \t%s\t\t|\t%s\n", strcpy(dest, "abc\0def"), ft_strcpy(dest, "abc\0def"));

	printf("\nSTRDUP\n");
	printf("[coucou]  \t%s\t\t|\t%s\n", strdup("coucou"), ft_strdup("coucou"));
	printf("[]  \t\t[%s]\t\t|\t[%s]\n", strdup(""), ft_strdup(""));
	printf("[abc\\0def]  \t%s\t\t|\t%s\n", strdup("abc\0def"), ft_strdup("abc\0def"));

	printf("\nWRITE\n");
	printf("[coucou]  \t%zd\t|\t%zd\n", write(1, "coucou", 6), ft_write(1, "coucou", 6));
	printf("[bie den]  \t%zd\t|\t%zd\n", write(1, "bie den", 3), ft_write(1, "bie den", 3));

	printf("\nREAD\n");
	fd = open("./ft_strcpy.s", O_RDONLY);
	errno = 0;
	printf("OFFI : ret/buff/errno:: [%zd] [%s] [%d]\n", read(fd, buf, 30), buf, errno);
	close(fd);
	fd = open("./ft_strcpy.s", O_RDONLY);
	errno = 0;	
	printf("MINE : ret/buff/errno:: [%zd] [%s] [%d]\n", ft_read(fd, buf, 30), buf, errno);
	close(fd);
	
	fd = -1;
	errno = 0;
	printf("OFFI : ret/buff/errno:: [%zd] [%s] [%d]\n", read(fd, buf, 30), buf, errno);
	errno = 0;	
	printf("MINE : ret/buff/errno:: [%zd] [%s] [%d]\n", ft_read(fd, buf, 30), buf, errno);
	close(fd);
	
	return (0);
}
